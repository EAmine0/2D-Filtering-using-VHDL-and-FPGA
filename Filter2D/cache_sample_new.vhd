----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:53 11/17/2017 
-- Design Name: 
-- Module Name:    cache_sample_new - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cache_sample_new is
    Port ( RESET : in  STD_LOGIC;
			  RESETFIFO : in STD_LOGIC;
           CLK : in  STD_LOGIC;
           camInput : in  STD_LOGIC_VECTOR (7 downto 0);
           EN : in  STD_LOGIC;
           prog_full_thresh : in  STD_LOGIC_VECTOR (9 downto 0);
			  pix1, pix2, pix3, pix4, pix5, pix6, pix7, pix8, pix9 : out std_logic_vector (7 downto 0);
			  winReady : out std_logic
			  );
end cache_sample_new;

architecture Behavioral of cache_sample_new is

component FF_D is
	generic (Bus_Width : integer := 8);
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (Bus_Width-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (Bus_Width-1 downto 0));
end component;

    COMPONENT FIFO_new
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         din : IN  std_logic_vector(7 downto 0);
         wr_en : IN  std_logic;
         rd_en : IN  std_logic;
         prog_full_thresh : IN  std_logic_vector(9 downto 0);
         dout : OUT  std_logic_vector(7 downto 0);
         full : OUT  std_logic;
         empty : OUT  std_logic;
         prog_full : OUT  std_logic
        );
    END COMPONENT;
	 
type pixel_type is array (0 to 10) of std_logic_vector(7 downto 0);   -- type of array 
signal pixel_cach : pixel_type;  -- ---  Signal to communicate from one component to the next

type pixel_type_1 is array (0 to 10) of std_logic_vector(0 downto 0);
signal pixel_cach_1 : pixel_type_1;

signal pfull1, pfull2, empty1, empty2: std_logic;

begin

--ROW1 FF with control FFs
f8 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => EN, D => camInput, Q => pixel_cach(10));
f8_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => EN, Q => pixel_cach_1(10));

f7 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(10)(0), D => pixel_cach(10), Q => pixel_cach(9));
f7_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(10)(0), Q => pixel_cach_1(9));

f6 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(9)(0), D => pixel_cach(9), Q => pixel_cach(8));
f6_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(9)(0), Q => pixel_cach_1(8));

--ROW1 FIFO1
   fifo1: FIFO_new PORT MAP (
          clk => clk,
          rst => RESETFIFO,
          din => pixel_cach(8),
          wr_en => pixel_cach_1(8)(0),
          rd_en => pfull1,
          prog_full_thresh => prog_full_thresh,
          dout => pixel_cach(7),
          full => open,
          empty => empty1,
          prog_full => pfull1
        );

--ROW2 FF with control FFs

--FFs to delay the signal as dout is geting delayed
f5_11 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pfull1, Q => pixel_cach_1(7));

f5 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(7)(0), D => pixel_cach(7), Q => pixel_cach(6));
f5_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(7)(0), Q => pixel_cach_1(6));

f4 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(6)(0), D => pixel_cach(6), Q => pixel_cach(5));
f4_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(6)(0), Q => pixel_cach_1(5));

f3 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(5)(0), D => pixel_cach(5), Q => pixel_cach(4));
f3_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(5)(0), Q => pixel_cach_1(4));


--ROW2 FIFO2
   fifo2: FIFO_new PORT MAP (
          clk => clk,
          rst => RESETFIFO,
          din => pixel_cach(4),
          wr_en => pixel_cach_1(4)(0),
          rd_en => pfull2,
          prog_full_thresh => prog_full_thresh,
          dout => pixel_cach(3),
          full => open,
          empty => empty2,
          prog_full => pfull2
        );


--ROW3 FF with control FFs

--FFs to delay the signal as dout is geting delayed		  
f2_11 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pfull2, Q => pixel_cach_1(3));
		  
f2 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(3)(0), D => pixel_cach(3), Q => pixel_cach(2));
f2_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(3)(0), Q => pixel_cach_1(2));


f1 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(2)(0), D => pixel_cach(2), Q => pixel_cach(1));
f1_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(2)(0), Q => pixel_cach_1(1));

f0 : FF_D generic map (Bus_Width => 8) port map (CLK => CLK, RESET => RESET, EN => pixel_cach_1(1)(0), D => pixel_cach(1), Q => pixel_cach(0));
f0_1 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => RESET, EN => '1', D(0) => pixel_cach_1(1)(0), Q => pixel_cach_1(0));


pix1 <= pixel_cach(10);
pix2 <= pixel_cach(9);
pix3 <= pixel_cach(8);
pix4 <= pixel_cach(6);
pix5 <= pixel_cach(5);
pix6 <= pixel_cach(4);
pix7 <= pixel_cach(2);
pix8 <= pixel_cach(1);
pix9 <= pixel_cach(0);
winReady <= pixel_cach_1(0)(0);

end Behavioral;

