#!/bin/bash
cd /home/vejmarie/compile/doc
# I am updating the local git
git pull
# just a short test
pandoc -o README.html README.md
cp README.html /usr/share/wordpress/documentation
