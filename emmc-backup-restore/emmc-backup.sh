#!/bin/bash

IMAGEGZ="$1"
BLKEMMC="/dev/mmcblk2"

if [[ $# -eq 0 ]] ; then
    me=`basename "$0"`
    echo "usage $me /path/to/image.gz"
    exit 1
fi

if [ ! -b "$BLKEMMC" ] ; then
   echo "Can't find EMMC ($BLKEMMC)"
   exit 1
fi

df / | grep -q "$BLKEMMC" 
if [ $? -eq 0 ] ; then
   echo "This script should not be run when EMMC is mounted as root device"
   exit 1
fi

### TODO check free space for image be written


BLOCKSIZE=`sudo blockdev --getsize64 "$BLKEMMC"` 
echo "$BLOCKSIZE"
sudo dd if="$BLKEMMC" bs=1MB | pv -s "$BLOCKSIZE" | gzip -9 > "$IMAGEGZ"
