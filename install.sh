#!/bin/bash

dir=jetty

bindir=~/.local/bin
dockerdir=~/.docker
webappsdir=~/webapps

mkdir -p $bindir
mkdir -p $dockerdir/$dir
mkdir -p $webappsdir

cp -r ./* $dockerdir/$dir/
mv $dockerdir/$dir/bin/* $bindir/
chmod +x $bindir/*
rmdir $dockerdir/$dir/bin
rm -f $bindir/$0

exit 0

