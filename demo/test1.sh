#!/bin/bash

out_path="`pwd`/out"
file_path=`realpath $0`
this_path=`dirname $file_path`

cd $this_path
gcc ./hello.c -o $out_path/hello

