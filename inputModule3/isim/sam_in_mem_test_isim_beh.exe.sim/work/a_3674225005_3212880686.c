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
static const char *ng0 = "C:/Users/user/FPGA/uart0.0/inputModule2/address_gen.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_3674225005_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(62, ng0);
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
LAB3:    t1 = (t0 + 7632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t5 = t1;
    memset(t5, (unsigned char)2, 9U);
    t6 = (t0 + 7872);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 9U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(64, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t2 = t1;
    memset(t2, (unsigned char)2, 9U);
    t5 = (t0 + 7936);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 9U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2632U);
    t6 = *((char **)t2);
    t2 = (t0 + 7872);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 9U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 7936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 9U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8000);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

}

static void work_a_3674225005_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 12044U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t0 + 8064);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 9U);
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 7648);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3674225005_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 12060U);
    t3 = (t0 + 3848U);
    t4 = *((char **)t3);
    t3 = (t0 + 12076U);
    t5 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 8128);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 7664);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 8128);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3674225005_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB8;

LAB9:
LAB3:    t1 = (t0 + 7680);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8192);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 9U);
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(84, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t8 = t1;
    memset(t8, (unsigned char)2, 9U);
    t9 = (t0 + 8192);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 9U);
    xsi_driver_first_trans_fast(t9);
    goto LAB6;

LAB8:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t1 = (t0 + 8192);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 9U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_3674225005_3212880686_p_4(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8256);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 9U);
    xsi_driver_first_trans_fast(t1);

LAB3:    t1 = (t0 + 7696);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t1 = (t0 + 12060U);
    t6 = (t0 + 3848U);
    t7 = *((char **)t6);
    t6 = (t0 + 12076U);
    t8 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t5, t1, t7, t6);
    if (t8 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 12060U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (9U != t18);
    if (t3 == 1)
        goto LAB8;

LAB9:    t7 = (t0 + 8256);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 9U);
    xsi_driver_first_trans_fast(t7);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(97, ng0);
    t9 = xsi_get_transient_memory(9U);
    memset(t9, 0, 9U);
    t10 = t9;
    memset(t10, (unsigned char)2, 9U);
    t11 = (t0 + 8256);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 9U);
    xsi_driver_first_trans_fast(t11);
    goto LAB6;

LAB8:    xsi_size_not_matching(9U, t18, 0);
    goto LAB9;

}

static void work_a_3674225005_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(107, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8320);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7712);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3674225005_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(108, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8384);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7728);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3674225005_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(109, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8448);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7744);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3674225005_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7760);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3674225005_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(111, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8576);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7776);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3674225005_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(112, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8640);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7792);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3674225005_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3674225005_3212880686_p_0,(void *)work_a_3674225005_3212880686_p_1,(void *)work_a_3674225005_3212880686_p_2,(void *)work_a_3674225005_3212880686_p_3,(void *)work_a_3674225005_3212880686_p_4,(void *)work_a_3674225005_3212880686_p_5,(void *)work_a_3674225005_3212880686_p_6,(void *)work_a_3674225005_3212880686_p_7,(void *)work_a_3674225005_3212880686_p_8,(void *)work_a_3674225005_3212880686_p_9,(void *)work_a_3674225005_3212880686_p_10};
	xsi_register_didat("work_a_3674225005_3212880686", "isim/sam_in_mem_test_isim_beh.exe.sim/work/a_3674225005_3212880686.didat");
	xsi_register_executes(pe);
}
