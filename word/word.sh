#!/bin/sh
sed `perl -e "print int rand(51000)"`"q;d" /usr/share/dict/words
