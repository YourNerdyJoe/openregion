
ARMIPS_PATH := /cygdrive/e/git/armips/_Output
ARMIPS := $(ARMIPS_PATH)/armips.exe

all:
	$(ARMIPS) mset_rop.s
	$(ARMIPS) mset_rop_6x.s
	