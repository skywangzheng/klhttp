TOPDIR := $(shell pwd)
OUTDIR := $(TOPDIR)/out
BINDIR := $(TOPDIR)/bin
Q = @
TARGET := 
CROSS-COMPILE :=
RM := $(Q)rm -rf
CC := $(Q)$(CROSS-COMPILE)-gcc
CXX := $(Q)g++
ECHO := $(Q)echo
MKDIR := $(Q)mkdir -p
CP := $(Q)cp -r

define add-to-final-target
$(eval TARGET += $(strip $(1)))
endef

define my-dir
$(patsubst %/,%, \
$(dir $(abspath $(word $(words $(MAKEFILE_LIST)), $(MAKEFILE_LIST)))))
endef

default: all

-include $(TOPDIR)/client/Makefile
-include $(TOPDIR)/server/Makefile

.PHONY : all target1 target2

all: prebuild $(TARGET)
	$(Q)echo "Build $@ Done!"

prebuild : 
	$(MKDIR) $(OUTDIR)
	$(MKDIR) $(BINDIR)
	
clean:
	$(RM) $(OUTDIR) $(BINDIR)
	
