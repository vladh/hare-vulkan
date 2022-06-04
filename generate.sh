#!/bin/sh

set -eu

cwd=$(pwd)
glad_dir=../glad

cd $glad_dir

python3 -m glad --out-path=${cwd}/v1.3 --api vulkan=1.3 --extensions='' hare
