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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/D DRIVE/mscv_sem3/RTIC/project/vhdl/test_MSCV/processor_sample.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2388071621_3212880686_p_0(char *t0)
{
    char t24[16];
    char t38[16];
    char t47[16];
    char t49[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t48;
    char *t50;
    char *t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned char t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;

LAB0:    xsi_set_current_line(154, ng0);

LAB3:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t3 = (11 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (11 - 0);
    t7 = (t6 * 1);
    t8 = (12U * t7);
    t9 = (0 + t8);
    t10 = (t9 + t5);
    t1 = (t2 + t10);
    t11 = *((unsigned char *)t1);
    t12 = (t0 + 4712U);
    t13 = *((char **)t12);
    t14 = (11 - 11);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (11 - 0);
    t18 = (t17 * 1);
    t19 = (12U * t18);
    t20 = (0 + t19);
    t21 = (t20 + t16);
    t12 = (t13 + t21);
    t22 = *((unsigned char *)t12);
    t25 = ((IEEE_P_2592010699) + 4024);
    t23 = xsi_base_array_concat(t23, t24, t25, (char)99, t11, (char)99, t22, (char)101);
    t26 = (t0 + 4712U);
    t27 = *((char **)t26);
    t28 = (11 - 11);
    t29 = (t28 * -1);
    t30 = (1U * t29);
    t31 = (11 - 0);
    t32 = (t31 * 1);
    t33 = (12U * t32);
    t34 = (0 + t33);
    t35 = (t34 + t30);
    t26 = (t27 + t35);
    t36 = *((unsigned char *)t26);
    t39 = ((IEEE_P_2592010699) + 4024);
    t37 = xsi_base_array_concat(t37, t38, t39, (char)97, t23, t24, (char)99, t36, (char)101);
    t40 = (t0 + 4712U);
    t41 = *((char **)t40);
    t42 = (11 - 0);
    t43 = (t42 * 1);
    t44 = (12U * t43);
    t45 = (0 + t44);
    t40 = (t41 + t45);
    t48 = ((IEEE_P_2592010699) + 4024);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 11;
    t51 = (t50 + 4U);
    *((int *)t51) = 0;
    t51 = (t50 + 8U);
    *((int *)t51) = -1;
    t52 = (0 - 11);
    t53 = (t52 * -1);
    t53 = (t53 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t53;
    t46 = xsi_base_array_concat(t46, t47, t48, (char)97, t37, t38, (char)97, t40, t49, (char)101);
    t53 = (1U + 1U);
    t54 = (t53 + 1U);
    t55 = (t54 + 12U);
    t56 = (15U != t55);
    if (t56 == 1)
        goto LAB5;

LAB6:    t51 = (t0 + 16192);
    t57 = (t51 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t46, 15U);
    xsi_driver_first_trans_fast(t51);

LAB2:    t61 = (t0 + 16112);
    *((int *)t61) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(15U, t55, 0);
    goto LAB6;

}


extern void work_a_2388071621_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2388071621_3212880686_p_0};
	xsi_register_didat("work_a_2388071621_3212880686", "isim/processor_sample_tb_isim_beh.exe.sim/work/a_2388071621_3212880686.didat");
	xsi_register_executes(pe);
}
