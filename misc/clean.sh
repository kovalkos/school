#!/bin/sh

regex= sed ':a;N;$!ba;s/\n/)|(./g;s/^/(/g;s/$/)/' .gitignore > /tmp/regexes.txt
files= find . -regextype posix-extended -regex "`cat /tmp/regexes.txt`" > /tmp/files.txt
fullregex= sed ':a;N;$!ba;s/\n/ /g' /tmp/files.txt > /tmp/fullregex.txt
rm -rf `cat /tmp/fullregex.txt`
