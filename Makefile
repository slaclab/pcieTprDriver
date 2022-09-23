# 
MAKE_HOME := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
ARCH ?= arm
LOC_VERS := $(wildcard /lib/modules/*/build)
LOC_VERS := $(patsubst %/,%,$(dir $(LOC_VERS)))
LOC_VERS := $(notdir $(LOC_VERS))

all: 
	@echo "Options: linuxRT-driver linux-drivers"

linuxRT-driver:
	@make -C $(MAKE_HOME)/build/buildroot-2019.08-x86_64

linux-drivers:
	@ $(foreach ver,$(LOC_VERS), \
		mkdir -p $(MAKE_HOME)/$(ver); \
		make -C $(MAKE_HOME)/src KVER=$(ver) clean; \
		make -C $(MAKE_HOME)/src KVER=$(ver); \
		scp $(MAKE_HOME)/src/*.ko $(MAKE_HOME)/$(ver); \
	)

clean:
	@make -C $(MAKE_HOME)/build/buildroot-2019.08-x86_64 clean
	@make -C $(MAKE_HOME)/src clean 
