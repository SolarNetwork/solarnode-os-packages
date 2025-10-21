#
# Hongtai Liu <lht856@foxmail.com>
# Copyright (c) 2023 Seeed Studio
#
# MIT License
#

KVERSION ?= $(shell uname -r)
BASEDIR := /lib/modules/$(shell uname -r)
KERNELDIR ?= $(BASEDIR)/build
PWD :=$(shell pwd)

obj-m				+= rtc-pcf8563w.o

.PHONY: all
all: clean modules modules_install

.PHONY:modules
modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

.PHONY:modules_install
modules_install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install

.PHONY:clean
clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
