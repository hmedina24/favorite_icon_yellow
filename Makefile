INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = project01

project01_FILES = Tweak.x
project01_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
