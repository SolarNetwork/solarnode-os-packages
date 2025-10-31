#
# Hongtai Liu <lht856@foxmail.com>
# Copyright (c) 2023 Seeed Studio
#
# MIT License
#

KVERSION ?= $(shell uname -r)
KDIR ?= /lib/modules/$(KVERSION)/build
PWD := $(shell pwd)

obj-m				+= rtc-pcf8563w.o

.PHONY: all
all: clean modules modules_install

.PHONY:modules
modules:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

.PHONY:modules_install
modules_install:
	$(MAKE) -C $(KDIR) M=$(PWD) modules_install

.PHONY:clean
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
