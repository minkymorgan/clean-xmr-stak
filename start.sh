#!/bin/sh

pool=$1
wallet=$2
password=$3

sed -i -e "s/POOL/${pool}/" -e "s/WALLET/${wallet}/" -e "s/PASSWORD/${password}/" /tmp/config.txt

/xmr-stak/build/bin/xmr-stak
