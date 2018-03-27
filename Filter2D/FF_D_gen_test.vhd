--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:10:22 09/26/2017
-- Design Name:   
-- Module Name:   C:/temp/test_MSCV/test_MSCV/FF_D_gen_test.vhd
-- Project Name:  test_MSCV
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FF_D_gen
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FF_D_gen_test IS
END FF_D_gen_test;
 
ARCHITECTURE behavior OF FF_D_gen_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FF_D_gen
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         EN : IN  std_logic;
         D : IN  std_logic_vector(7 downto 0);
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal EN : std_logic := '0';
   signal D : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);
--	signal clk_en : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FF_D_gen PORT MAP (
          CLK => CLK,
          RESET => RESET,
          EN => EN,
          D => D,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET <= '1';
--		clk_en <= '0';
      wait for 20 ns;	
--		clk_en <= '1';
		D <= x"AA";
		EN <= '0';
		wait for 100 ns;
		wait until (CLK'event and CLK = '1');
		wait for 2 ns;
		RESET <= '0';
		wait for CLK_period*3;
		EN <= '1';
		wait for CLK_period*1;
		D <= x"FF";
		wait for CLK_period*1;
		EN <= '0';
		D <= x"AA";
		wait for CLK_period*1;
		wait for CLK_Period*10;
		

  -- insert stimulus here 

      wait;
   end process;

END;
