#!/bin/bash

case "$1" in
	pre)	/sbin/modprobe -r hid_multitouch
		exit 0
		;;
	post)	/sbin/modprobe hid_multitouch
		exit 0
		;;
 	*)	exit 1
		;;
esac
