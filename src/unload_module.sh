#!/bin/sh

rmmod tpr.ko

/bin/rm -f /dev/tpr[a-z]*
