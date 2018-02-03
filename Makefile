DEBUG = 0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NtSpeed
NtSpeed_FILES = Tweak.xm
NtSpeed_FRAMEWORKS = CydiaSubstrate Foundation UIKit CoreGraphics
NtSpeed_CFLAGS = -fobjc-arc
NtSpeed_LDFLAGS = -Wl,-segalign,4000

NtSpeed_ARCHS = armv7 arm64
export ARCHS = armv7 arm64

include $(THEOS)/makefiles/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
