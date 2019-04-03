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

