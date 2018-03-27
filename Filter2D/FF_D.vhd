----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:19:38 09/26/2017 
-- Design Name: 
-- Module Name:    FF_D - Behavioral 
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

entity FF_D is
	generic (Bus_Width : integer := 8);
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (Bus_Width-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (Bus_Width-1 downto 0));
end FF_D;

architecture FF_D_beh of FF_D is

begin

p1 : process(CLK, RESET, EN)
begin
	if RESET = '1' then Q <= (others => '0');
	elsif (CLK'event and CLK = '1') then
		if (EN = '1') then Q <= D;
		end if;
	end if;
end process;

end FF_D_beh;

