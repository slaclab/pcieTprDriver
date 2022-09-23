BUILDROOT_VER=buildroot-2019.08

MAKE_HOME := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
BUILDROOT_HOME = /afs/slac/package/linuxRT/$(BUILDROOT_VER)
ARCH=x86_64
OUTPUT_DIR=../../buildroot-2019.08-x86_64

# ===============================================================
# We don't want to use the compiler cache; especially since not
# everyone has write access to the buildroot installation.
# ===============================================================
export CCACHE_DISABLE=1

### EVR testing machines
XCROSS_HOME := $(BUILDROOT_HOME)/host/linux-x86_64/x86_64/usr/bin/x86_64-buildroot-linux-gnu-
KERNELDIR := $(BUILDROOT_HOME)/buildroot-2019.08-x86_64/output/build/linux-4.14.139

all:
	### copy the sources to make a directory for building
	cp -r ../../src/*.[chs]* .
	$(MAKE) compile install

# tpr-objs  += 

obj-m += tpr.o

compile:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(XCROSS_HOME) -C $(KERNELDIR) M=$(MAKE_HOME) modules

clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions *.symvers  *.order *.c *.h module_* original.* *.sh
 
install:
	mkdir -p $(OUTPUT_DIR)/include/
	cp  *.h  $(OUTPUT_DIR)/include/.
	cp  *.ko $(OUTPUT_DIR)/.
	cp  *.sh $(OUTPUT_DIR)/.

