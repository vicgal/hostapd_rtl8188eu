#!/bin/bash

set -o errexit

function push()
{
	pushd $1 >/dev/null
}

function pop()
{
	popd >/dev/null
}

push ./hostapd-2.7/hostapd
make
pop

wget https://misc1.dev.resin.io/~vicgal/kernel-modules-headers/fin_cm3/v2.26.0+rev1/kernel_modules_headers.tar.gz
tar xvf kernel_modules_headers.tar.gz -C .

rm -rf kernel_modules_headers.tar.gz 

cd rtl8188eu
make all
