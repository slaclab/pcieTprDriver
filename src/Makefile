
NAME := tpr
MAKE_HOME := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
KVER ?= $(shell uname -r)
ARCH ?= $(shell uname -m)
XCROSS_HOME :=
KERNELDIR := /lib/modules/$(KVER)/build
#SRCS := $(wildcard *.c)
#OBJS := $(patsubst %.c,%.o,$(SRCS))

#ccflags-y += -I$(MAKE_HOME)

#$(NAME)-objs := tpr.o
obj-m        := $(NAME).o

all:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(XCROSS_HOME) -C $(KERNELDIR) M=$(MAKE_HOME) modules

clean:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(XCROSS_HOME) -C $(KERNELDIR) M=$(MAKE_HOME) clean
	rm -f $(OBJS)
