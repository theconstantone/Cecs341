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
static const char *ng0 = "C:/Users/clner/Documents/CECS225/CECS341_lab3/Control.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {580U, 0U};
static unsigned int ng3[] = {35U, 0U};
static unsigned int ng4[] = {480U, 0U};
static unsigned int ng5[] = {43U, 0U};
static unsigned int ng6[] = {136U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {10U, 0U};
static unsigned int ng9[] = {2U, 0U};
static unsigned int ng10[] = {1U, 0U};
static unsigned int ng11[] = {1023U, 1023U};



static void Always_9_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
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

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(9, ng0);

LAB5:    xsi_set_current_line(10, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(16, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 2);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t2, 3, 0, 1);
    t8 = (t0 + 2248);
    xsi_vlogvar_assign_value(t8, t2, 4, 0, 1);
    t9 = (t0 + 2088);
    xsi_vlogvar_assign_value(t9, t2, 5, 0, 1);
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t2, 6, 0, 1);
    t11 = (t0 + 1768);
    xsi_vlogvar_assign_value(t11, t2, 7, 0, 1);
    t12 = (t0 + 1608);
    xsi_vlogvar_assign_value(t12, t2, 8, 0, 1);
    t13 = (t0 + 1448);
    xsi_vlogvar_assign_value(t13, t2, 9, 0, 1);

LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(11, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 2568);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    t9 = (t0 + 2728);
    xsi_vlogvar_assign_value(t9, t7, 1, 0, 2);
    t10 = (t0 + 2408);
    xsi_vlogvar_assign_value(t10, t7, 3, 0, 1);
    t11 = (t0 + 2248);
    xsi_vlogvar_assign_value(t11, t7, 4, 0, 1);
    t12 = (t0 + 2088);
    xsi_vlogvar_assign_value(t12, t7, 5, 0, 1);
    t13 = (t0 + 1928);
    xsi_vlogvar_assign_value(t13, t7, 6, 0, 1);
    t14 = (t0 + 1768);
    xsi_vlogvar_assign_value(t14, t7, 7, 0, 1);
    t15 = (t0 + 1608);
    xsi_vlogvar_assign_value(t15, t7, 8, 0, 1);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t7, 9, 0, 1);
    goto LAB19;

LAB9:    xsi_set_current_line(12, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t3, 1, 0, 2);
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t3, 3, 0, 1);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t3, 4, 0, 1);
    t10 = (t0 + 2088);
    xsi_vlogvar_assign_value(t10, t3, 5, 0, 1);
    t11 = (t0 + 1928);
    xsi_vlogvar_assign_value(t11, t3, 6, 0, 1);
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t3, 7, 0, 1);
    t13 = (t0 + 1608);
    xsi_vlogvar_assign_value(t13, t3, 8, 0, 1);
    t14 = (t0 + 1448);
    xsi_vlogvar_assign_value(t14, t3, 9, 0, 1);
    goto LAB19;

LAB11:    xsi_set_current_line(13, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t3, 1, 0, 2);
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t3, 3, 0, 1);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t3, 4, 0, 1);
    t10 = (t0 + 2088);
    xsi_vlogvar_assign_value(t10, t3, 5, 0, 1);
    t11 = (t0 + 1928);
    xsi_vlogvar_assign_value(t11, t3, 6, 0, 1);
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t3, 7, 0, 1);
    t13 = (t0 + 1608);
    xsi_vlogvar_assign_value(t13, t3, 8, 0, 1);
    t14 = (t0 + 1448);
    xsi_vlogvar_assign_value(t14, t3, 9, 0, 1);
    goto LAB19;

LAB13:    xsi_set_current_line(14, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t3, 1, 0, 2);
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t3, 3, 0, 1);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t3, 4, 0, 1);
    t10 = (t0 + 2088);
    xsi_vlogvar_assign_value(t10, t3, 5, 0, 1);
    t11 = (t0 + 1928);
    xsi_vlogvar_assign_value(t11, t3, 6, 0, 1);
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t3, 7, 0, 1);
    t13 = (t0 + 1608);
    xsi_vlogvar_assign_value(t13, t3, 8, 0, 1);
    t14 = (t0 + 1448);
    xsi_vlogvar_assign_value(t14, t3, 9, 0, 1);
    goto LAB19;

LAB15:    xsi_set_current_line(15, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t3, 1, 0, 2);
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t3, 3, 0, 1);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t3, 4, 0, 1);
    t10 = (t0 + 2088);
    xsi_vlogvar_assign_value(t10, t3, 5, 0, 1);
    t11 = (t0 + 1928);
    xsi_vlogvar_assign_value(t11, t3, 6, 0, 1);
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t3, 7, 0, 1);
    t13 = (t0 + 1608);
    xsi_vlogvar_assign_value(t13, t3, 8, 0, 1);
    t14 = (t0 + 1448);
    xsi_vlogvar_assign_value(t14, t3, 9, 0, 1);
    goto LAB19;

}


extern void work_m_00000000001786180985_2058220583_init()
{
	static char *pe[] = {(void *)Always_9_0};
	xsi_register_didat("work_m_00000000001786180985_2058220583", "isim/test_isim_beh.exe.sim/work/m_00000000001786180985_2058220583.didat");
	xsi_register_executes(pe);
}
