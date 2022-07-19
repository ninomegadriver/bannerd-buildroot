################################################################################
#
# bannerd
#
################################################################################

BANNERD_VERSION = v1.0
BANNERD_SITE = package/bannerd/bannerd
BANNERD_SITE_METHOD = local
BANNERD_LICENSE = GPLv2

define BANNERD_BUILD_CMDS
        CFLAGS="-w -mcpu=arm1176jzf-s -mfloat-abi=hard -mfpu=vfp -mtune=arm1176jzf-s -O3" $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define BANNERD_INSTALL_TARGET_CMDS
    cp -a $(@D)/bannerd $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
