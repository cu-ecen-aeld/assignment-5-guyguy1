
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

LDD_VERSION = '0ac75fdd88824d1443167f2cfe6d455abf00f9c6'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-guyguy1.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
