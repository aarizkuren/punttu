#!/bin/env bash

GATEWAY=192.168.1.1 # Etxea
while getopts ":bmc" option
do
  case "${option}" in
    "b")
      GATEWAY=10.0.2.1;; # Biko gateway
    "m")
      GATEWAY=192.168.0.1;; # Maiteren etxeko gateway
    "c")
      GATEWAY=$2;; # Custom gateway
  esac
done

INTERFACE=$(ifconfig -u -l -X "utun[0-9]" | awk '{printf $NF}')

sudo route delete default
sudo route add default $GATEWAY
sudo route add -host 192.168.0.0 -netmask 255.255.0.0 -interface $INTERFACE
sudo route add -host 10.0.0.0 -netmask 255.0.0.0 -interface $INTERFACE
