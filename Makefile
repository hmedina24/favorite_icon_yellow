THEOS_DEVICE_IP = 192.168.1.4

ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = project01

project01_FILES = Tweak.xm
project01_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
