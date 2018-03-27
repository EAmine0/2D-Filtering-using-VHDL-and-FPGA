----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:19 12/01/2017 
-- Design Name: 
-- Module Name:    processor_sample - Behavioral 
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

entity processor_sample is
    Port ( pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8, pixel9 : in  STD_LOGIC_VECTOR (7 downto 0);
           kernal1, kernal2, kernal3, kernal4, kernal5, kernal6, kernal7, kernal8, kernal9 : in  STD_LOGIC_VECTOR (3 downto 0);
			  divideby : IN std_logic_vector (5 downto 0);
			  CLK : in STD_LOGIC;
			  PEN : in STD_LOGIC;
			  PRDY : out STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (15 downto 0));
end processor_sample;

architecture Behavioral of processor_sample is

COMPONENT my_adder
	PORT(
         a : IN  std_logic_vector(11 downto 0);
         b : IN  std_logic_vector(11 downto 0);
         clk : IN  std_logic;
         s : OUT  std_logic_vector(12 downto 0)
        );
    END COMPONENT;
	 
COMPONENT my_adder2
	PORT(
         a : IN  std_logic_vector(12 downto 0);
         b : IN  std_logic_vector(12 downto 0);
         clk : IN  std_logic;
         s : OUT  std_logic_vector(13 downto 0)
        );
    END COMPONENT;
	 
COMPONENT my_adder3
	PORT(
         a : IN  std_logic_vector(13 downto 0);
         b : IN  std_logic_vector(13 downto 0);
         clk : IN  std_logic;
         s : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;

COMPONENT my_adder4
	PORT(
         a : IN  std_logic_vector(14 downto 0);
         b : IN  std_logic_vector(14 downto 0);
         clk : IN  std_logic;
         s : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
COMPONENT my_mult
    PORT(
         clk : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         p : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
	 
COMPONENT my_divider
    PORT(
         DIVIDEND : IN std_logic_vector (15 downto 0);
         DIVISOR: IN std_logic_vector(5 downto 0);     
			CLK : IN std_logic;
         QUOTIENT : OUT std_logic_vector(15 downto 0)
         );
    END COMPONENT;
			
	 
component FF_D is
	generic (Bus_Width : integer := 12);
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (Bus_Width-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (Bus_Width-1 downto 0));
end component;


type pixel_type is array (0 to 11) of std_logic_vector(11 downto 0);   -- type of array 
signal result_temp_mul : pixel_type;  -- ---  Signal to communicate from one component to the next

type pixel_type_add1 is array (0 to 3) of std_logic_vector(12 downto 0);
signal result_temp_add1 : pixel_type_add1;

type pixel_type_add2 is array (0 to 1) of std_logic_vector(13 downto 0);
signal result_temp_add2 : pixel_type_add2;

signal result_temp_add3 : std_logic_vector(14 downto 0);

signal result_temp_pixel9 : std_logic_vector(14 downto 0);
signal result_temp_add4 : std_logic_vector(15 downto 0);

--for FF used as flags
type flag_type is array (0 to 23) of std_logic_vector(0 downto 0);
signal flag : flag_type;

begin

--multipliers 
m1 : my_mult PORT MAP (clk => CLK, a => kernal1, b => pixel1, p => result_temp_mul(0));
m2 : my_mult PORT MAP (clk => CLK, a => kernal2, b => pixel2, p => result_temp_mul(1));
m3 : my_mult PORT MAP (clk => CLK, a => kernal3, b => pixel3, p => result_temp_mul(2));
m4 : my_mult PORT MAP (clk => CLK, a => kernal4, b => pixel4, p => result_temp_mul(3));
m5 : my_mult PORT MAP (clk => CLK, a => kernal5, b => pixel5, p => result_temp_mul(4));
m6 : my_mult PORT MAP (clk => CLK, a => kernal6, b => pixel6, p => result_temp_mul(5));
m7 : my_mult PORT MAP (clk => CLK, a => kernal7, b => pixel7, p => result_temp_mul(6));
m8 : my_mult PORT MAP (clk => CLK, a => kernal8, b => pixel8, p => result_temp_mul(7));
m9 : my_mult PORT MAP (clk => CLK, a => kernal9, b => pixel9, p => result_temp_mul(8));

--adders
add1 : my_adder PORT MAP (a => result_temp_mul(0), b => result_temp_mul(1), clk => CLK, s => result_temp_add1(0));
add2 : my_adder PORT MAP (a => result_temp_mul(2), b => result_temp_mul(3), clk => CLK, s => result_temp_add1(1));
add3 : my_adder PORT MAP (a => result_temp_mul(4), b => result_temp_mul(5), clk => CLK, s => result_temp_add1(2));
add4 : my_adder PORT MAP (a => result_temp_mul(6), b => result_temp_mul(7), clk => CLK, s => result_temp_add1(3));
add5 : my_adder2 PORT MAP (a => result_temp_add1(0), b => result_temp_add1(1), clk => CLK, s => result_temp_add2(0));
add6 : my_adder2 PORT MAP (a => result_temp_add1(2), b => result_temp_add1(3), clk => CLK, s => result_temp_add2(1));
add7 : my_adder3 PORT MAP (a => result_temp_add2(0), b => result_temp_add2(1), clk => CLK, s => result_temp_add3);

--delay FFs
f1 : FF_D generic map (Bus_Width => 12) port map (CLK => CLK, RESET => '0', EN => '1', D => result_temp_mul(8), Q => result_temp_mul(9));
f2 : FF_D generic map (Bus_Width => 12) port map (CLK => CLK, RESET => '0', EN => '1', D => result_temp_mul(9), Q => result_temp_mul(10));
f3 : FF_D generic map (Bus_Width => 12) port map (CLK => CLK, RESET => '0', EN => '1', D => result_temp_mul(10), Q => result_temp_mul(11));

result_temp_pixel9 <= result_temp_mul(11)(11) & result_temp_mul(11)(11) & result_temp_mul(11)(11) & result_temp_mul(11);

add8 : my_adder4 PORT MAP (a => result_temp_add3, b => result_temp_pixel9, clk => CLK, s => result_temp_add4);

divider : my_divider PORT MAP (DIVIDEND => result_temp_add4, DIVISOR => divideby, CLK => CLK, QUOTIENT => result);

f4 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D(0) => PEN, Q => flag(0));
f5 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(0), Q => flag(1));
f6 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(1), Q => flag(2));
f7 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(2), Q => flag(3));
f8 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(3), Q => flag(4));
f9 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(4), Q => flag(5));
f10 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(5), Q => flag(6));
f11 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(6), Q => flag(7));
f12 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(7), Q => flag(8));
f13 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(8), Q => flag(9));
f14 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(9), Q => flag(10));
f15 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(10), Q => flag(11));
f16 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(11), Q => flag(12));
f17 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(12), Q => flag(13));
f18 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(13), Q => flag(14));
f19 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(14), Q => flag(15));
f20 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(15), Q => flag(16));
f21 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(16), Q => flag(17));
f22 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(17), Q => flag(18));
f23 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(18), Q => flag(19));
f24 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(19), Q => flag(20));
f25 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(20), Q => flag(21));
f26 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(21), Q => flag(22));
f27 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(22), Q => flag(23));
f28 : FF_D generic map (Bus_Width => 1) port map (CLK => CLK, RESET => '0', EN => '1', D => flag(23), Q(0) => PRDY);





end Behavioral;

