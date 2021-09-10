#!/bin/sh

insmod tpr.ko

/bin/rm -f /dev/tpr[a-z]*
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%cBSA c %d 15\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c    c %d 14\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c0   c %d  0\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c1   c %d  1\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c2   c %d  2\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c3   c %d  3\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c4   c %d  4\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c5   c %d  5\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c6   c %d  6\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c7   c %d  7\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c8   c %d  8\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%c9   c %d  9\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%ca   c %d 10\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%cb   c %d 11\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%cc   c %d 12\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'
/usr/bin/awk 'BEGIN{n=97;}/tpr/{printf "/bin/mknod -m 666 /dev/tpr%cd   c %d 13\n", n++, $1}' /proc/devices | xargs -I % /bin/sh -c '%'

