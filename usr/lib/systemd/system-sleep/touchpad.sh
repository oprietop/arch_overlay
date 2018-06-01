#!/bin/bash

case "$1" in
    pre)
        /sbin/modprobe -r hid_multitouch
        /sbin/modprobe -r hid_generic
        /sbin/modprobe -r i2c_hid
        /sbin/modprobe -r hid
        exit 0
        ;;
    post)
        /sbin/modprobe hid
        /sbin/modprobe i2c_hid
        /sbin/modprobe hid_generic
        /sbin/modprobe hid_multitouch
        exit 0
        ;;
    *)  exit 1
        ;;
esac
