#!/bin/bash

touch_copy () {
  local from="$1"
  local to="$2"
  if [ -d $from ] # Directory?
  then
    echo "=== Zero copy from: $from"
    echo "                to: $to"
    if [ ! -d $to ]
    then
      mkdir $to
    fi
    for f in $from/*
    do
      touch_copy "$f" "$to/${f##*/}"
    done
  else
    if [ ! -e $to ] # !Exist?
    then
      touch "$to"
    fi
  fi
}

IFS_BAK=$IFS
IFS=$(echo -en "\n\b") # Handle spaces in files loop

touch_copy $1 $2

IFS=$IFS_BAK
