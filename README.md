shadow_clone
============

Clone a folder. Newly created folder has files with 0 size.

## Scenario

You want to copy a big folder from the office to home. You only have one small capacity USB drive. So you decide to just copy part of the big folder first, then the rest later.

The problem is it is not always easy to remember what you have copied since the last time.

This approche: just shadow_clone your home's folder to your USB drive. Go to the office, select all files then copy (without overwrite) to your USB.

## Usage

```bash
./shadow_copy.sh from/path to/path
```

### Notes
* Make sure shadow_copy.sh is executable:


```bash
chmod +x shadow_copy.sh
```

* A way to copy without overwrite:

```bash
copy -Rn from/path/ to/path/
```