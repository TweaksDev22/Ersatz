export ARCHS = arm64 arm64e
export TARGET = iphone:latest:15.0
export DEB_ARCH = iphoneos-arm64
export IPHONEOS_DEPLOYMENT_TARGET = 15.0
THEOS_PACKAGE_SCHEME=roothide

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Ersatz

Ersatz_FILES = Tweak.x
Ersatz_CFLAGS = -fobjc-arc
Ersatz_LDFLAGS += -lroothide

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += prefs
include $(THEOS_MAKE_PATH)/aggregate.mk


Ersatz_CODESIGN_FLAGS = -Sentitlements.plist