
##############################################################
#
#	AESD_CHARDRIVER
#
##############################################################


AESD_CHARDRIVER_VERSION = '9c11f91551000d756315f9a89080c50effb73ed3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHARDRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-kamini2801.git'
AESD_CHARDRIVER_SITE_METHOD = git
AESD_CHARDRIVER_GIT_SUBMODULES = YES
# AESD_CHARDRIVER_OVERRIDE_SRCDIR = /home/kamini/AESD/assignments-3-and-later-kamini2801

AESD_CHARDRIVER_MODULE_SUBDIRS += aesd-char-driver/


define AESD_CHARDRIVER_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	
endef

$(eval $(kernel-module))
$(eval $(generic-package))
