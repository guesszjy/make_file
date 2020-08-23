# build root directory
export BUILD_ROOT = $(shell pwd)
# Head files PATH
export HEAD_PATH = $(BUILD_ROOT)/include
#build directory
#when you add a module,you need add you directory
# here
BUILD_DIR = $(BUILD_ROOT)/lcd/ \
	    $(BUILD_ROOT)/usb/ \
	    $(BUILD_ROOT)/media/ \
	    $(BUILD_ROOT)/math/ \
	    $(BUILD_ROOT)/app/

DEBUG = true
ARCH  = arm 
