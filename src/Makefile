
NAME := tpr
MAKE_HOME := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
KVER ?= $(shell uname -r)
ARCH ?= $(shell uname -m)
XCROSS_HOME :=
KERNELDIR := /lib/modules/$(KVER)/build

ifndef GITV
    GITT := $(shell cd $(MAKE_HOME); git checkout tpr.mod.c; git describe --tags)
    GITD := $(shell cd $(MAKE_HOME); git status --short -uno | wc -l)
    GITV := $(if $(filter $(GITD),0),$(GITT),$(GITT)-dirty)
endif

ccflags-y += -DGITV=\"$(GITV)\"


#ccflags-y += -I$(MAKE_HOME)

obj-m        := $(NAME).o

all:
	@echo $(GITV)
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(XCROSS_HOME) -C $(KERNELDIR) M=$(MAKE_HOME) modules

clean:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(XCROSS_HOME) -C $(KERNELDIR) M=$(MAKE_HOME) clean
	rm -f $(OBJS)
