#!/bin/bash                                                                     

yum install wget
wget http://mirrors.ustc.edu.cn/gnu/libc/glibc-2.23.tar.gz
tar vxf glibc-2.23.tar.gz
mkdir glibc-2.23/build
cd glibc-2.23/build
../configure --prefix=/usr
make -j 10
