LOCAL_TARGET := test_netbean
LOCAL_PATH := $(call my-dir)
LOCAL_SRC := $(wildcard $(LOCAL_PATH)/src/*.c)
LOCAL_MODULE := $(patsubst $(TOPDIR)/%, $(OUTDIR)/%, $(LOCAL_PATH)/$(LOCAL_TARGET))
LOCAL_CFLAGS := -g
LOCAL_INCLUDE := -I $(LOCAL_PATH)/inc
LOCAL_SRC += $(LOCAL_PATH)/unit_test/test_netbase.c
LOCAL_OBJS := $(patsubst $(TOPDIR)/%.c, $(OUTDIR)/%.o, $(LOCAL_SRC))
.PHONY : $(LOCAL_TARGET)

$(LOCAL_TARGET): $(LOCAL_MODULE)
	$(ECHO) "Build $@ Done!"
	
$(LOCAL_MODULE) : LOCAL_PATH := $(LOCAL_PATH)
$(LOCAL_MODULE) : LOCAL_INCLUDE := $(LOCAL_INCLUDE)
$(LOCAL_MODULE) : $(LOCAL_OBJS)
	$(CC) -o $@ $^
	$(CP) $@ $(BINDIR)
	$(CP) $(LOCAL_PATH)/www $(BINDIR)/
	
$(OUTDIR)/%.o : $(TOPDIR)/%.c
	$(MKDIR) $(dir $@)
	$(CC) -c $< -o $@ $(LOCAL_CFLAGS) $(LOCAL_INCLUDE)

$(call add-to-final-target, $(LOCAL_TARGET))


LOCAL_TARGET := test_klhttp
LOCAL_PATH := $(call my-dir)
LOCAL_SRC := $(wildcard $(LOCAL_PATH)/src/*.c)
LOCAL_MODULE := $(patsubst $(TOPDIR)/%, $(OUTDIR)/%, $(LOCAL_PATH)/$(LOCAL_TARGET))
LOCAL_CFLAGS := -g
LOCAL_INCLUDE := -I $(LOCAL_PATH)/inc
LOCAL_SRC += $(LOCAL_PATH)/unit_test/test_klhttpd.c
LOCAL_OBJS := $(patsubst $(TOPDIR)/%.c, $(OUTDIR)/%.o, $(LOCAL_SRC))

.PHONY : $(LOCAL_TARGET)

$(LOCAL_TARGET): $(LOCAL_MODULE)
	$(ECHO) "Build $@ Done!"
	
$(LOCAL_MODULE) : LOCAL_PATH := $(LOCAL_PATH)
$(LOCAL_MODULE) : LOCAL_INCLUDE := $(LOCAL_INCLUDE)
$(LOCAL_MODULE) : $(LOCAL_OBJS)
	$(CC) -o $@ $^
	$(CP) $@ $(BINDIR)

$(OUTDIR)/%.o : $(TOPDIR)/%.c
	$(MKDIR) $(dir $@)
	$(CC) -c $< -o $@ $(LOCAL_CFLAGS) $(LOCAL_INCLUDE)

$(call add-to-final-target, $(LOCAL_TARGET))
