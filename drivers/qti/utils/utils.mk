#---------------------------------------------------------------------------
# Copyright (c) 2025 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#---------------------------------------------------------------------------


#================================================================
# Make Header.
#----------------------------------------------------------------
module = $(SUBDIR)
#================================================================

$(info included utils.mk) 

$(eval $(call add_define_val,SYS_RES_LVLS,16))

# Header paths and sources.
global_includes	:=	include/drivers/qti/utils \


module_includes	:=	include/drivers/qti/utils \
			include/services/qti/cmd_db \

module_sources	:=	pwr_utils_lvl.c


PLAT_INCLUDES +=	-Iinclude/drivers/qti/utils \
			-Iinclude/services/qti/pwr_utils \
			-Iinclude/services/qti/cmd_db \
			-Iplat/qti/qtiseclib/inc

#================================================================
# Make Footer.
#----------------------------------------------------------------
_LIB_SOURCES  += $(addprefix $(module), $(module_sources))
_LIB_INCLUDES += $(addprefix -I$(module), $(module_includes))
_LIB_INCLUDES += $(addprefix -I, $(global_includes))


#================================================================
