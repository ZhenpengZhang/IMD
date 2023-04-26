#!/bin/bash
make install
wget http://mirrors.ustc.edu.cn/gnu/libc/glibc-2.25.tar.gz
tar vxf glibc-2.25.tar.gz
mkdir glibc-2.25/build
cd glibc-2.25/build
../configure --prefix=/usr
make -j 10
make install
yum install -y cmake gcc glibc-devel libnl3-devel bison flex zlib-devel libstdc++-devel gcc-c++ tcl tcl-devel tk libudev-devel rpm-build glib2-devel libtool libnl-devel numactl-devel lsof valgrind-devel
wget https://www.openfabrics.org/downloads/OFED/ofed-4.8/OFED-4.8.tgz --no-check-certificate
tar -vxf OFED-4.8.tgz
cd OFED-4.8
./install.pl --without-depcheck