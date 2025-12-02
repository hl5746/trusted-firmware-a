/*---------------------------------------------------------------------------
 *  Copyright (c) 2016-2018 Qualcomm Technologies, Inc.
 *  All Rights Reserved.
 *  Confidential and Proprietary - Qualcomm Technologies, Inc.
 *-------------------------------------------------------------------------*/

//===========================================================================
//                   Includes and Public Data Declarations
//===========================================================================

//---------------------------------------------------------------------------
// Include Files
//------------------- --------------------------------------------------------
#include <qtiseclib_defs_plat.h>

#include "cmd_db_int.h"

char *cmd_db_addr = (char *)0x0;

//===========================================================================
//                             Function Definitions
//===========================================================================
/**
 * <!-- cmd_db_pre_db_access -->
 *
 * @brief Prepare image for db data access.
 *
 *  @return None.
 *
 */
void cmd_db_prep_access(void)
{
	return;
}

/**
 * <!-- cmd_db_access_done -->
 *
 * @brief Prepare image for db data access.
 *
 *  @return None.
 *
 */
void cmd_db_access_done(void)
{
	return;
}

/**
 * <!-- cmd_db_target_mem_init -->
 *
 * @brief Return target address for Command DB data.
 *
 *  @return Command DB data address for success, NULL for
 *          failure.
 *
*/
char *cmd_db_target_mem_init(uint32_t *size)
{
	cmd_db_addr = (char *)QTI_AOP_CMD_DB_BASE;
	*size = QTI_AOP_CMD_DB_SIZE;
	return cmd_db_addr;
}

/**
 * <!-- cmd_db_tzbsp_init -->
 *
 * @brief API for TZ core bsp init to call to init Cmd DB.
 *
 *  @return None
 *
*/
void cmd_db_tzbsp_init(void)
{
	cmd_db_init();
}
