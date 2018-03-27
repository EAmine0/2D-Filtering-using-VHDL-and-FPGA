--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:39:19 12/08/2017
-- Design Name:   
-- Module Name:   C:/Users/ge515497/Documents/VHDL/test_MSCV/processor_sample_tb.vhd
-- Project Name:  test_MSCV
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: processor_sample
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
USE ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY processor_sample_tb IS
END processor_sample_tb;
 
ARCHITECTURE behavior OF processor_sample_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT processor_sample
    PORT(
         pixel1 : IN  std_logic_vector(7 downto 0);
         pixel2 : IN  std_logic_vector(7 downto 0);
         pixel3 : IN  std_logic_vector(7 downto 0);
         pixel4 : IN  std_logic_vector(7 downto 0);
         pixel5 : IN  std_logic_vector(7 downto 0);
         pixel6 : IN  std_logic_vector(7 downto 0);
         pixel7 : IN  std_logic_vector(7 downto 0);
         pixel8 : IN  std_logic_vector(7 downto 0);
         pixel9 : IN  std_logic_vector(7 downto 0);
         kernal1 : IN  std_logic_vector(3 downto 0);
         kernal2 : IN  std_logic_vector(3 downto 0);
         kernal3 : IN  std_logic_vector(3 downto 0);
         kernal4 : IN  std_logic_vector(3 downto 0);
         kernal5 : IN  std_logic_vector(3 downto 0);
         kernal6 : IN  std_logic_vector(3 downto 0);
         kernal7 : IN  std_logic_vector(3 downto 0);
         kernal8 : IN  std_logic_vector(3 downto 0);
         kernal9 : IN  std_logic_vector(3 downto 0);
			divideby : IN std_logic_vector (5 downto 0);
         CLK : IN  std_logic;
			PEN : IN std_logic;
			PRDY : OUT std_logic;
         result : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pixel1 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel2 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel3 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel4 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel5 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel6 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel7 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel8 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel9 : std_logic_vector(7 downto 0) := (others => '0');
   signal kernal1 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal2 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal3 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal4 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal5 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal6 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal7 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal8 : std_logic_vector(3 downto 0) := (others => '0');
   signal kernal9 : std_logic_vector(3 downto 0) := (others => '0');
	signal divideby : std_logic_vector (5 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
	signal PEN : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(15 downto 0);
	signal PRDY : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: processor_sample PORT MAP (
          pixel1 => pixel1,
          pixel2 => pixel2,
          pixel3 => pixel3,
          pixel4 => pixel4,
          pixel5 => pixel5,
          pixel6 => pixel6,
          pixel7 => pixel7,
          pixel8 => pixel8,
          pixel9 => pixel9,
          kernal1 => kernal1,
          kernal2 => kernal2,
          kernal3 => kernal3,
          kernal4 => kernal4,
          kernal5 => kernal5,
          kernal6 => kernal6,
          kernal7 => kernal7,
          kernal8 => kernal8,
          kernal9 => kernal9,
			 divideby => divideby,
          CLK => CLK,
			 PEN => PEN,
			 PRDY => PRDY,
          result => result
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
      wait for 100 ns;	

      wait for CLK_period*10;
		PEN <= '1';
		
	   kernal1 <= std_logic_vector(to_signed(1, 4));
		kernal2 <= std_logic_vector(to_signed(1, 4));
		kernal3 <= std_logic_vector(to_signed(1, 4));
		kernal4 <= std_logic_vector(to_signed(1, 4));
		kernal5 <= std_logic_vector(to_signed(1, 4));
		kernal6 <= std_logic_vector(to_signed(1, 4));
		kernal7 <= std_logic_vector(to_signed(1, 4));
		kernal8 <= std_logic_vector(to_signed(1, 4));
		kernal9 <= std_logic_vector(to_signed(1, 4));
		
		divideby <= std_logic_vector(to_signed(9, 6));
--		pixel1 <= "01100100";
--		pixel2 <= "01100101";
--		pixel3 <= "01100110";
--		pixel4 <= "01100111";
--		pixel5 <= "01101000";
--		pixel6 <= "01101001";
--		pixel7 <= "01101010";
--		pixel8 <= "01101011";
--		pixel9 <= "01101100";
		
		
		for count in 1 to 270 loop
			--camInput <= std_logic_vector(unsigned(camInput) + 1);
			
		
		pixel1 <= std_logic_vector(unsigned(pixel1) + 9);
		pixel2 <= std_logic_vector(unsigned(pixel2) + 9);
		pixel3 <= std_logic_vector(unsigned(pixel3) + 9);
		pixel4 <= std_logic_vector(unsigned(pixel4) + 9);
		pixel5 <= std_logic_vector(unsigned(pixel5) + 9);
		pixel6 <= std_logic_vector(unsigned(pixel6) + 9);
		pixel7 <= std_logic_vector(unsigned(pixel7) + 9);
		pixel8 <= std_logic_vector(unsigned(pixel8) + 9);
		pixel9 <= std_logic_vector(unsigned(pixel9) + 9);
		
		wait for CLK_period;
		end loop;
		


      -- insert stimulus here 

      wait;
   end process;

END;
