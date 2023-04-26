#!/bin/bash                                                                     
make install
cd /lib64
unlink libm.so.6
ln -s libm-2.23.so libm.so.6