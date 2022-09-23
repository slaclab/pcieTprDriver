
NAME := tpr
MAKE_HOME := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
KVER ?= $(shell uname -r)
ARCH ?= $(shell uname -m)
XCROSS_HOME :=
KERNELDIR := /lib/modules/$(KVER)/build

#ccflags-y += -I$(MAKE_HOME)

obj-m        := $(NAME).o

all:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(XCROSS_HOME) -C $(KERNELDIR) M=$(MAKE_HOME) modules

clean:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(XCROSS_HOME) -C $(KERNELDIR) M=$(MAKE_HOME) clean
	rm -f $(OBJS)
