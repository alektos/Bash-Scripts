#!/bin/bash
# Author Alektos

dir=$1
ren="mv"

for f in $dir*
do
        echo "Process:      $f"
        fname=$(basename $f)
        newname=$(echo $fname | sed -e 's/[0-9]*.//' -e 's/.[a-z]//g')
        echo "New filename: $newname"
        $ren $f $dir$newname
done
