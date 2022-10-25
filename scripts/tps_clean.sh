#!/bin/bash
if [[ $# -lt 1 ]]; then
    echo "Usage: ./tps_clean [problem code]"
    exit 0
fi

if ! [[ -d $1 ]]; then
    echo "Error: \"$1\" must be a directory"
    exit 0
fi

rm -rf $1/logs
rm -rf $1/sandbox
rm -rf $1/tests
cd $1
cd gen
make clean
cd ..
cd checker
make clean
cd ..
cd validator
make clean
cd ..
cd ..

echo "Done!"
