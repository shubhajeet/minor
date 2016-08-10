/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/user/FPGA/uart0.0/inputModule2/out_buf.vhd";



static void work_a_3363273596_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(67, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t2 = t1;
    memset(t2, (unsigned char)2, 3U);
    t5 = (t0 + 3776);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast(t5);

LAB3:    t1 = (t0 + 3680);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 5892);
    t7 = 1;
    if (3U == 3U)
        goto LAB8;

LAB9:    t7 = 0;

LAB10:    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5895);
    t3 = 1;
    if (3U == 3U)
        goto LAB16;

LAB17:    t3 = 0;

LAB18:    if (t3 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5898);
    t3 = 1;
    if (3U == 3U)
        goto LAB24;

LAB25:    t3 = 0;

LAB26:    if (t3 != 0)
        goto LAB22;

LAB23:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5901);
    t3 = 1;
    if (3U == 3U)
        goto LAB32;

LAB33:    t3 = 0;

LAB34:    if (t3 != 0)
        goto LAB30;

LAB31:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5904);
    t3 = 1;
    if (3U == 3U)
        goto LAB40;

LAB41:    t3 = 0;

LAB42:    if (t3 != 0)
        goto LAB38;

LAB39:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5907);
    t3 = 1;
    if (3U == 3U)
        goto LAB48;

LAB49:    t3 = 0;

LAB50:    if (t3 != 0)
        goto LAB46;

LAB47:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5910);
    t3 = 1;
    if (3U == 3U)
        goto LAB56;

LAB57:    t3 = 0;

LAB58:    if (t3 != 0)
        goto LAB54;

LAB55:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t8 = (23 - 23);
    t13 = (t8 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t0 + 3776);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast(t5);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 1672U);
    t12 = *((char **)t11);
    t13 = (23 - 2);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t11 = (t12 + t15);
    t16 = (t0 + 3776);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 3U);
    xsi_driver_first_trans_fast(t16);
    goto LAB6;

LAB8:    t8 = 0;

LAB11:    if (t8 < 3U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t9 = (t5 + t8);
    t10 = (t1 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB9;

LAB13:    t8 = (t8 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(52, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t13 = (23 - 5);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t12 = (t0 + 3776);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB16:    t8 = 0;

LAB19:    if (t8 < 3U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB17;

LAB21:    t8 = (t8 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(54, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t13 = (23 - 8);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t12 = (t0 + 3776);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB24:    t8 = 0;

LAB27:    if (t8 < 3U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB25;

LAB29:    t8 = (t8 + 1);
    goto LAB27;

LAB30:    xsi_set_current_line(56, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t13 = (23 - 11);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t12 = (t0 + 3776);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB32:    t8 = 0;

LAB35:    if (t8 < 3U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB33;

LAB37:    t8 = (t8 + 1);
    goto LAB35;

LAB38:    xsi_set_current_line(58, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t13 = (23 - 14);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t12 = (t0 + 3776);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB40:    t8 = 0;

LAB43:    if (t8 < 3U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB41;

LAB45:    t8 = (t8 + 1);
    goto LAB43;

LAB46:    xsi_set_current_line(60, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t13 = (23 - 17);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t12 = (t0 + 3776);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB48:    t8 = 0;

LAB51:    if (t8 < 3U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB49;

LAB53:    t8 = (t8 + 1);
    goto LAB51;

LAB54:    xsi_set_current_line(62, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t13 = (23 - 20);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t12 = (t0 + 3776);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB56:    t8 = 0;

LAB59:    if (t8 < 3U)
        goto LAB60;
    else
        goto LAB58;

LAB60:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB57;

LAB61:    t8 = (t8 + 1);
    goto LAB59;

}

static void work_a_3363273596_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3696);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3363273596_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3363273596_3212880686_p_0,(void *)work_a_3363273596_3212880686_p_1};
	xsi_register_didat("work_a_3363273596_3212880686", "isim/sam_in_mem_test_isim_beh.exe.sim/work/a_3363273596_3212880686.didat");
	xsi_register_executes(pe);
}
