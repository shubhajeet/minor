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
static const char *ng0 = "C:/Users/user/FPGA/uart0.0/inputModule2/sam_in_mem_test.vhd";
extern char *STD_TEXTIO;



static void work_a_2036679477_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    int t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 4912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(110, ng0);

LAB4:    t2 = (t0 + 3936U);
    t3 = std_textio_endfile(t2);
    t4 = (!(t3));
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3368U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t10 = (t9 - 1);
    t2 = (t0 + 9640);
    *((int *)t2) = 0;
    t6 = (t0 + 9644);
    *((int *)t6) = t10;
    t11 = 0;
    t12 = t10;

LAB8:    if (t11 <= t12)
        goto LAB9;

LAB11:    xsi_set_current_line(125, ng0);

LAB20:    *((char **)t1) = &&LAB21;

LAB1:    return;
LAB5:    xsi_set_current_line(111, ng0);
    t5 = (t0 + 4720);
    t6 = (t0 + 3936U);
    t7 = (t0 + 4112U);
    std_textio_readline(STD_TEXTIO, t5, t6, t7);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4720);
    t5 = (t0 + 4112U);
    t6 = (t0 + 4328U);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t7 = (t0 + 9352U);
    std_textio_read14(STD_TEXTIO, t2, t5, t8, t7);
    goto LAB4;

LAB6:;
LAB9:    xsi_set_current_line(117, ng0);
    t7 = (t0 + 4328U);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t8 = (t0 + 9640);
    t14 = *((int *)t8);
    t15 = (t14 + 1);
    t16 = (t15 - 1);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(1, 64, 1, t15);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t20 = (t13 + t19);
    t3 = *((unsigned char *)t20);
    t21 = (t0 + 3488U);
    t22 = *((char **)t21);
    t21 = (t22 + 0);
    *((unsigned char *)t21) = t3;
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 3488U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t4 = (t3 == (unsigned char)48);
    if (t4 != 0)
        goto LAB12;

LAB14:    t2 = (t0 + 3488U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t4 = (t3 == (unsigned char)49);
    if (t4 != 0)
        goto LAB15;

LAB16:
LAB13:
LAB10:    t2 = (t0 + 9640);
    t11 = *((int *)t2);
    t5 = (t0 + 9644);
    t12 = *((int *)t5);
    if (t11 == t12)
        goto LAB11;

LAB17:    t9 = (t11 + 1);
    t11 = t9;
    t6 = (t0 + 9640);
    *((int *)t6) = t11;
    goto LAB8;

LAB12:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3368U);
    t6 = *((char **)t2);
    t9 = *((int *)t6);
    t10 = (t9 - 1);
    t2 = (t0 + 9640);
    t14 = *((int *)t2);
    t15 = (t10 - t14);
    t16 = (t15 - 63);
    t17 = (t16 * -1);
    t18 = (1 * t17);
    t19 = (0U + t18);
    t7 = (t0 + 5792);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t20 = (t13 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_delta(t7, t19, 1, 0LL);
    goto LAB13;

LAB15:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 3368U);
    t6 = *((char **)t2);
    t9 = *((int *)t6);
    t10 = (t9 - 1);
    t2 = (t0 + 9640);
    t14 = *((int *)t2);
    t15 = (t10 - t14);
    t16 = (t15 - 63);
    t17 = (t16 * -1);
    t18 = (1 * t17);
    t19 = (0U + t18);
    t7 = (t0 + 5792);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t20 = (t13 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_delta(t7, t19, 1, 0LL);
    goto LAB13;

LAB18:    goto LAB2;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

}

static void work_a_2036679477_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5856);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4968);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 5856);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4968);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2036679477_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    int t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int64 t28;

LAB0:    t1 = (t0 + 5408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 5216);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 5920);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 5216);
    xsi_process_wait(t2, t4);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 5920);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 5216);
    xsi_process_wait(t2, t4);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 3368U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t9 = (t8 - 1);
    t2 = (t0 + 9648);
    *((int *)t2) = 0;
    t5 = (t0 + 9652);
    *((int *)t5) = t9;
    t10 = 0;
    t11 = t9;

LAB16:    if (t10 <= t11)
        goto LAB17;

LAB19:    xsi_set_current_line(156, ng0);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(150, ng0);
    t6 = (t0 + 2312U);
    t7 = *((char **)t6);
    t6 = (t0 + 3368U);
    t12 = *((char **)t6);
    t13 = *((int *)t12);
    t14 = (t13 - 1);
    t6 = (t0 + 9648);
    t15 = *((int *)t6);
    t16 = (t14 - t15);
    t17 = (t16 - 63);
    t18 = (t17 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t16);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t21 = (t7 + t20);
    t22 = *((unsigned char *)t21);
    t23 = (t0 + 5984);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t22;
    xsi_driver_first_trans_fast(t23);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t28 = (t4 * 2604);
    t2 = (t0 + 5216);
    xsi_process_wait(t2, t28);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 9648);
    t10 = *((int *)t2);
    t3 = (t0 + 9652);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB19;

LAB24:    t8 = (t10 + 1);
    t10 = t8;
    t5 = (t0 + 9648);
    *((int *)t5) = t10;
    goto LAB16;

LAB20:    goto LAB18;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB25:    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}


extern void work_a_2036679477_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2036679477_2372691052_p_0,(void *)work_a_2036679477_2372691052_p_1,(void *)work_a_2036679477_2372691052_p_2};
	xsi_register_didat("work_a_2036679477_2372691052", "isim/sam_in_mem_test_isim_beh.exe.sim/work/a_2036679477_2372691052.didat");
	xsi_register_executes(pe);
}
