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
char *UNISIM_P_0947159679;
char *UNISIM_P_3222816464;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
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
    work_a_2349154912_2372691052_init();


    xsi_register_tops("work_a_2349154912_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
