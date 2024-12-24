LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_SDK_VERSION := 14

LOCAL_MODULE := pixman-1

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/pixman \

LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_SRC_FILES := \
	pixman/pixman.c \
	pixman/pixman-access.c \
	pixman/pixman-access-accessors.c \
	pixman/pixman-bits-image.c \
	pixman/pixman-combine32.c \
	pixman/pixman-combine-float.c \
	pixman/pixman-conical-gradient.c \
	pixman/pixman-filter.c \
	pixman/pixman-x86.c \
	pixman/pixman-mips.c \
	pixman/pixman-arm.c \
	pixman/pixman-ppc.c \
	pixman/pixman-edge.c \
	pixman/pixman-edge-accessors.c \
	pixman/pixman-fast-path.c \
	pixman/pixman-glyph.c \
	pixman/pixman-general.c \
	pixman/pixman-gradient-walker.c \
	pixman/pixman-image.c \
	pixman/pixman-implementation.c \
	pixman/pixman-linear-gradient.c \
	pixman/pixman-matrix.c \
	pixman/pixman-noop.c \
	pixman/pixman-radial-gradient.c \
	pixman/pixman-region16.c \
	pixman/pixman-region32.c \
	pixman/pixman-solid-fill.c \
	pixman/pixman-timer.c \
	pixman/pixman-trap.c \
	pixman/pixman-utils.c


LOCAL_STATIC_LIBRARIES := 

LOCAL_LDLIBS :=  -llog -lc -lm -ldl -lz

include $(BUILD_SHARED_LIBRARY)

