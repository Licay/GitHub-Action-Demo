#!/bin/bash

out_path="`pwd`/out"
file_path=`realpath $0`
this_path=`dirname $file_path`
base=`realpath $this_path/..`

echo "## Release `git describe --exact-match --tags`"
echo ""
echo "This is auto generated release."
echo ""
echo "---"
echo ""
echo "**Build artifacts (out.tar.gz) contain the following files:**"
echo ""
echo "\`\`\`"
ls -1 $out_path
echo "\`\`\`"
echo ""
