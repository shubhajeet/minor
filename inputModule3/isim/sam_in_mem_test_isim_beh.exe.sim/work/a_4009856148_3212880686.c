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
static const char *ng0 = "C:/Users/user/FPGA/uart0.0/inputModule2/uart_interf.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_4009856148_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6800);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(24U);
    memset(t1, 0, 24U);
    t5 = t1;
    memset(t5, (unsigned char)2, 24U);
    t6 = (t0 + 6976);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 24U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 7040);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t2 = t1;
    memset(t2, (unsigned char)2, 2U);
    t5 = (t0 + 7104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2792U);
    t6 = *((char **)t2);
    t2 = (t0 + 6976);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 24U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7040);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7104);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

}

static void work_a_4009856148_3212880686_p_1(char *t0)
{
    char t12[16];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;

LAB0:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7168);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 24U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 7232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 7296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB12;

LAB13:
LAB3:    t1 = (t0 + 6816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t9 = (23 - 15);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t3 + t11);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t6 = ((IEEE_P_2592010699) + 4024);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 15;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 15);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = (t0 + 10736U);
    t4 = xsi_base_array_concat(t4, t12, t6, (char)97, t1, t13, (char)97, t5, t15, (char)101);
    t17 = (16U + 8U);
    t18 = (24U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 7168);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t4, 24U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 10816U);
    t3 = (t0 + 3592U);
    t4 = *((char **)t3);
    t16 = *((int *)t4);
    t24 = (t16 - 1);
    t7 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t24);
    if (t7 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 10816U);
    t3 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t4 = (t12 + 12U);
    t9 = *((unsigned int *)t4);
    t10 = (1U * t9);
    t7 = (2U != t10);
    if (t7 == 1)
        goto LAB10;

LAB11:    t5 = (t0 + 7296);
    t6 = (t5 + 56U);
    t14 = *((char **)t6);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    memcpy(t19, t3, 2U);
    xsi_driver_first_trans_fast(t5);

LAB8:    goto LAB3;

LAB5:    xsi_size_not_matching(24U, t17, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(81, ng0);
    t3 = xsi_get_transient_memory(2U);
    memset(t3, 0, 2U);
    t5 = t3;
    memset(t5, (unsigned char)2, 2U);
    t6 = (t0 + 7296);
    t14 = (t6 + 56U);
    t15 = *((char **)t14);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 2U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 7232);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_size_not_matching(2U, t10, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(88, ng0);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t3 = t1;
    memset(t3, (unsigned char)2, 2U);
    t4 = (t0 + 7296);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t14 = (t6 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 7232);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_4009856148_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 24U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6832);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4009856148_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(94, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7424);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6848);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4009856148_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 7488);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6864);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4009856148_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(96, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7552);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6880);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4009856148_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 7616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4009856148_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4009856148_3212880686_p_0,(void *)work_a_4009856148_3212880686_p_1,(void *)work_a_4009856148_3212880686_p_2,(void *)work_a_4009856148_3212880686_p_3,(void *)work_a_4009856148_3212880686_p_4,(void *)work_a_4009856148_3212880686_p_5,(void *)work_a_4009856148_3212880686_p_6};
	xsi_register_didat("work_a_4009856148_3212880686", "isim/sam_in_mem_test_isim_beh.exe.sim/work/a_4009856148_3212880686.didat");
	xsi_register_executes(pe);
}
