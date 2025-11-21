#!/bin/bash

out_path="`pwd`/out"
file_path=`realpath $0`
this_path=`dirname $file_path`
base=`realpath $this_path/..`

ln_file=$1

if [ -z "$ln_file" ] || [ ! -f "$ln_file" ]; then
    echo "Usage: $0 <target_file>"
    exit 1
fi

rm $base/run -f
ln -s $ln_file $base/run
