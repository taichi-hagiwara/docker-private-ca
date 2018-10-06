#!/bin/sh

if [ -e $1.sh ]; then
    _=$1
    shift
    sh $_.sh $@
else
    $1
fi
