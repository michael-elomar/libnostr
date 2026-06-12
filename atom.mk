LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libnostr
LOCAL_CATEGORY_PATH := libs
LOCAL_DESCRIPTION := Toolkit for developing nostr applications
LOCAL_EXPORT_LDLIBS := -lnostr

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include

LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_EXAMPLES=ON

LOCAL_CMAKE_CONFIGURE_ENV +=\
	BUILD_TYPE=Debug \
	VERSION=1.0.0

include $(BUILD_CMAKE)
