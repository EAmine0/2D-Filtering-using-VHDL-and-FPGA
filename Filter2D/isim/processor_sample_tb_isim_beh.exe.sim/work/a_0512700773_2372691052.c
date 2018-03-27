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
static const char *ng0 = "E:/D DRIVE/mscv_sem3/RTIC/project/vhdl/test_MSCV/processor_sample_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


static void work_a_0512700773_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 6464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 4848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5640);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 6464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 4848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5640);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0512700773_2372691052_p_1(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    int t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;

LAB0:    t1 = (t0 + 6080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(145, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 5888);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 4848U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 5888);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 6528);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(150, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 6592);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(151, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 6656);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(152, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 6720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(153, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 6784);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(154, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 6848);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(155, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 6912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(156, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 6976);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(157, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 7040);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(158, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 1, 4);
    t4 = (t0 + 7104);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(160, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 9, 6);
    t4 = (t0 + 7168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 12132);
    *((int *)t2) = 1;
    t4 = (t0 + 12136);
    *((int *)t4) = 270;
    t11 = 1;
    t12 = 270;

LAB12:    if (t11 <= t12)
        goto LAB13;

LAB15:    xsi_set_current_line(193, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(176, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 11660U);
    t8 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t7, t6, 9);
    t10 = (t0 + 7232);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(177, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 11676U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7296);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(178, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 11692U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7360);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(179, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 11708U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7424);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(180, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 11724U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7488);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(181, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 11740U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7552);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(182, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 11756U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7616);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(183, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 11772U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7680);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(184, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t2 = (t0 + 11788U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t4, t2, 9);
    t7 = (t0 + 7744);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(186, ng0);
    t2 = (t0 + 4848U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 5888);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 12132);
    t11 = *((int *)t2);
    t4 = (t0 + 12136);
    t12 = *((int *)t4);
    if (t11 == t12)
        goto LAB15;

LAB20:    t17 = (t11 + 1);
    t11 = t17;
    t6 = (t0 + 12132);
    *((int *)t6) = t11;
    goto LAB12;

LAB16:    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_0512700773_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0512700773_2372691052_p_0,(void *)work_a_0512700773_2372691052_p_1};
	xsi_register_didat("work_a_0512700773_2372691052", "isim/processor_sample_tb_isim_beh.exe.sim/work/a_0512700773_2372691052.didat");
	xsi_register_executes(pe);
}
