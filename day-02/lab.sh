#!/bin/bash
set -euo pipefail

mkdir -p ~/lab/bin ~/lab/tmp ~/lab/logs

echo "hello from day 02" > ~/lab/tmp/hello.txt
cp ~/lab/tmp/hello.txt ~/lab/tmp/hello-copy.txt
ln -sfn hello.txt ~/lab/tmp/hello-link.txt

echo "=== .txt files under ~/lab ==="
find ~/lab -name '*.txt'

echo "/ — whole system (root of the tree)"
echo "/etc — config"
echo "/var/log — logs"
echo "/home — user files"
echo "/usr/bin — programs"
