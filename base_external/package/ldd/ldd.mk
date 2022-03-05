
##############################################################
#
# Linux Device Drivers
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = '97a2a1e5678b08e97e81deb1e96a11c271c4e1a3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-kamini2801.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULES_SUBDIR = misc-modules/
LDD_MODULES_SUBDIR += scull/

#LDD_OVERRIDE_SRCDIR = /home/kamini/AESD/assignment-7-kamini2801

#define LDD_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules modules
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull modules
#endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LDD_INSTALL_TARGET_CMDS
		
	$(INSTALL) -m 0755 $(@D)/scull $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	

	$(INSTALL) -m 0755 $(@D)/misc-modules $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	
	
endef

$(eval $(kernel-module))
$(eval $(generic-package))


