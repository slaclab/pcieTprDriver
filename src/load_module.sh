#!/bin/sh

rmmod -s evr_device.ko
rmmod -s tpr.ko
insmod tpr.ko

# Search for TPR devices
majors=$(awk "\$2==\"tpr\" {print \$1}" /proc/devices)
echo "Found" $(echo $majors | wc -w) "TPR Event Receivers."

echo "Creating device nodes..."
umask 022

if [ -e /dev/tpr ]; then
	rm -f /dev/tpr
fi
device=1
for major in $majors; do
    dev=$(echo $device | awk '{ printf "%c", 96+ $1}')
    device=$((++device))
    echo "Creating nodes /dev/tpr"$dev"* for major" $major
    if [ -e /dev/tpr$dev ]; then
		rm -f /dev/tpr$dev*
	fi
    mknod -m 666 '/dev/tpr'$devBSA c $major 15
    mknod -m 666 '/dev/tpr'$dev    c $major 14
    mknod -m 666 '/dev/tpr'$dev'0' c $major 0
    mknod -m 666 '/dev/tpr'$dev'1' c $major 1
    mknod -m 666 '/dev/tpr'$dev'2' c $major 2
    mknod -m 666 '/dev/tpr'$dev'3' c $major 3
    mknod -m 666 '/dev/tpr'$dev'4' c $major 4
    mknod -m 666 '/dev/tpr'$dev'5' c $major 5
    mknod -m 666 '/dev/tpr'$dev'6' c $major 6
    mknod -m 666 '/dev/tpr'$dev'7' c $major 7
    mknod -m 666 '/dev/tpr'$dev'8' c $major 8
    mknod -m 666 '/dev/tpr'$dev'9' c $major 9
    mknod -m 666 '/dev/tpr'$dev'a' c $major 10
    mknod -m 666 '/dev/tpr'$dev'b' c $major 11
    mknod -m 666 '/dev/tpr'$dev'c' c $major 12
    mknod -m 666 '/dev/tpr'$dev'd' c $major 13
done

