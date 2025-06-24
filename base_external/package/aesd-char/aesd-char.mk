
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_CHAR_VERSION = '908aab8fd0edc9891153ba0f25352458a1821747'
AESD_CHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-guyguy1.git'
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver

define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/S98aesdchar $(TARGET_DIR)/etc/init.d
endef

$(eval $(kernel-module))
$(eval $(generic-package))
