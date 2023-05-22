#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


if aplay -L | grep -q ALC887 ; then
  mkdir -p /etc/pipewire
  cp -rf pipewire/* /etc/pipewire/
fi

cp -rf etc/* /etc/
cp -rf usr/bin/* /usr/bin/
