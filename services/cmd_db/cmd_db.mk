#---------------------------------------------------------------------------
# Copyright (c) 2018 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#---------------------------------------------------------------------------


#================================================================
# Make Header.
#----------------------------------------------------------------
module = $(SUBDIR)
#================================================================

$(info included cmd_db.mk)

# Header paths and sources.
global_includes	:=	include/services/qti/cmd_db


module_includes	:=	.	\
			include/services/qti/cmd_db \


module_sources	:=	cmd_db.c	\
			cmd_db_target.c	\

#================================================================
# Make Footer.
#----------------------------------------------------------------
_LIB_SOURCES  += $(addprefix $(module), $(module_sources))
_LIB_INCLUDES += $(addprefix -I$(module), $(module_includes))
_LIB_INCLUDES += $(addprefix -I, $(global_includes))
#================================================================
