#!/bin/sh
set -x -e

INSTALL_DIR=$PWD/python-2.4-install
curl -O http://www.python.org/ftp/python/2.4.6/Python-2.4.6.tar.bz2
tar xjf Python-2.4.6.tar.bz2
cd Python-2.4.6
./configure --prefix=$INSTALL_DIR
make
make install
cd ..
$INSTALL_DIR/bin/python2.4 -c 'import sys; print "Hello world from %s" % (sys.version_info,)'
