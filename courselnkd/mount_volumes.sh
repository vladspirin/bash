#!/bin/bash
if [ -z $1 ] ; then
    echo "usage : disk <diskname>"
    echo "Mounts <diskname> if it's not mounted, and"
    echo "unmounts it if it is already mounted."
fi
NAME=$1
PART=`diskutil list | grep $NAME | awk '{print $7}'`

if [ -z `ls -1 /Volumes/ | grep $NAME`] ; then
    # check that PART appears to be a disk partition
    echo Checking $NAME $PART
    if [ `file /dev/$PART | awk '{print $2}'` = "block" ] ; then
    echo Mounting $NAME $PART
    diskutil mount /dev/$PART
    else
        echo /dev/$PART does not appear to be a disk partition - exiting
    exit 1
    fi
else
    echo unmounting $NAME
    diskutil unmount /Volumes/$NAME
fi

