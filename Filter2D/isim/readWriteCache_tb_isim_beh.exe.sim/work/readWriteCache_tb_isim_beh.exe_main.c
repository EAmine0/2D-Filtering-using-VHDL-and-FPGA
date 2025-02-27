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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *XILINXCORELIB_P_0718376120;
char *STD_TEXTIO;
char *XILINXCORELIB_P_1837083571;
char *XILINXCORELIB_P_3381355550;
char *XILINXCORELIB_P_1433929353;
char *XILINXCORELIB_P_3155556343;
char *IEEE_P_0774719531;
char *XILINXCORELIB_P_1705937335;
char *UNISIM_P_0947159679;
char *UNISIM_P_3222816464;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *IEEE_P_3564397177;
char *XILINXCORELIB_P_0624651749;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_1242562249_init();
    work_a_3374479990_1068750539_init();
    work_a_3337830905_1068750539_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    xilinxcorelib_a_3979217985_3212880686_init();
    xilinxcorelib_a_2140416230_3212880686_init();
    xilinxcorelib_a_2611660838_3212880686_init();
    work_a_4166149157_3513474190_init();
    work_a_3699154193_3212880686_init();
    unisim_p_0947159679_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    ieee_p_0774719531_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_1705937335_init();
    xilinxcorelib_a_2033935680_3212880686_init();
    work_a_0760447368_3351980052_init();
    xilinxcorelib_p_0718376120_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_1433929353_init();
    xilinxcorelib_p_3155556343_init();
    xilinxcorelib_p_0624651749_init();
    xilinxcorelib_a_3795523833_3212880686_init();
    xilinxcorelib_a_2540012936_3212880686_init();
    xilinxcorelib_a_1405911747_3212880686_init();
    work_a_3557746770_1831926567_init();
    xilinxcorelib_a_0403106734_3212880686_init();
    xilinxcorelib_a_1651529239_3212880686_init();
    xilinxcorelib_a_1404485722_3212880686_init();
    work_a_4238347498_1603684496_init();
    xilinxcorelib_a_3074587113_3212880686_init();
    xilinxcorelib_a_3333995638_3212880686_init();
    xilinxcorelib_a_3119271044_3212880686_init();
    work_a_3957004457_1582572199_init();
    work_a_0259448327_1068750539_init();
    xilinxcorelib_a_2650720609_3212880686_init();
    xilinxcorelib_a_0067113434_3212880686_init();
    xilinxcorelib_a_4201177461_3212880686_init();
    work_a_2411361632_1528509474_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_1916428545_3403034321_init();
    unisim_a_2650278463_3403034321_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_1769350033_2693788048_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_2261302797_3723259517_init();
    unisim_a_2121384304_3723259517_init();
    unisim_a_0587692967_3731405331_init();
    unisim_a_0006958716_3731405331_init();
    unisim_a_3600803327_3731405331_init();
    unisim_a_2407326632_3634591992_init();
    unisim_a_3647356362_3634591992_init();
    unisim_a_3449702363_3752513572_init();
    unisim_a_4104775526_3752513572_init();
    unisim_a_1446710196_3752513572_init();
    unisim_a_1553322848_3672491681_init();
    unisim_a_2589328394_3676810390_init();
    unisim_a_0350208134_1521797606_init();
    unisim_a_2892212195_1521797606_init();
    unisim_a_1646226234_1266530935_init();
    unisim_a_3484885994_2523279426_init();
    unisim_a_3702704980_1602505438_init();
    work_a_3257372655_0632001823_init();
    work_a_2388071621_3212880686_init();
    work_a_0396008810_2372691052_init();


    xsi_register_tops("work_a_0396008810_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    XILINXCORELIB_P_0718376120 = xsi_get_engine_memory("xilinxcorelib_p_0718376120");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    XILINXCORELIB_P_1433929353 = xsi_get_engine_memory("xilinxcorelib_p_1433929353");
    XILINXCORELIB_P_3155556343 = xsi_get_engine_memory("xilinxcorelib_p_3155556343");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    XILINXCORELIB_P_1705937335 = xsi_get_engine_memory("xilinxcorelib_p_1705937335");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    XILINXCORELIB_P_0624651749 = xsi_get_engine_memory("xilinxcorelib_p_0624651749");

    return xsi_run_simulation(argc, argv);

}
