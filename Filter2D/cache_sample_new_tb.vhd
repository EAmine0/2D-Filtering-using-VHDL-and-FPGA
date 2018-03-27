--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:22:43 11/17/2017
-- Design Name:   
-- Module Name:   C:/temp/test_MSCV/test_MSCV/cache_sample_new_tb.vhd
-- Project Name:  test_MSCV
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cache_sample_new
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
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cache_sample_new_tb IS
END cache_sample_new_tb;
 
ARCHITECTURE behavior OF cache_sample_new_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cache_sample_new
    PORT(
         RESET : IN  std_logic;
			RESETFIFO : IN STD_LOGIC;
         CLK : IN  std_logic;
         camInput : IN  std_logic_vector(7 downto 0);
         EN : IN  std_logic;
         prog_full_thresh : IN  std_logic_vector(9 downto 0);
         pix1 : OUT  std_logic_vector(7 downto 0);
         pix2 : OUT  std_logic_vector(7 downto 0);
         pix3 : OUT  std_logic_vector(7 downto 0);
         pix4 : OUT  std_logic_vector(7 downto 0);
         pix5 : OUT  std_logic_vector(7 downto 0);
         pix6 : OUT  std_logic_vector(7 downto 0);
         pix7 : OUT  std_logic_vector(7 downto 0);
         pix8 : OUT  std_logic_vector(7 downto 0);
         pix9 : OUT  std_logic_vector(7 downto 0);
         winReady : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RESET : std_logic := '0';
	signal RESETFIFO : std_logic := '0';
   signal CLK : std_logic := '0';
   signal camInput : std_logic_vector(7 downto 0) := (others => '0');
   signal EN : std_logic := '0';
   signal prog_full_thresh : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal pix1 : std_logic_vector(7 downto 0);
   signal pix2 : std_logic_vector(7 downto 0);
   signal pix3 : std_logic_vector(7 downto 0);
   signal pix4 : std_logic_vector(7 downto 0);
   signal pix5 : std_logic_vector(7 downto 0);
   signal pix6 : std_logic_vector(7 downto 0);
   signal pix7 : std_logic_vector(7 downto 0);
   signal pix8 : std_logic_vector(7 downto 0);
   signal pix9 : std_logic_vector(7 downto 0);
   signal winReady : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cache_sample_new PORT MAP (
          RESET => RESET,
			 RESETFIFO => RESETFIFO,
          CLK => CLK,
          camInput => camInput,
          EN => EN,
          prog_full_thresh => prog_full_thresh,
          pix1 => pix1,
          pix2 => pix2,
          pix3 => pix3,
          pix4 => pix4,
          pix5 => pix5,
          pix6 => pix6,
          pix7 => pix7,
          pix8 => pix8,
          pix9 => pix9,
          winReady => winReady
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
      wait for 100 ns;	
		RESET <= '1';
		RESETFIFO <= '1';
		
		camInput <= "00000000";
		prog_full_thresh <= "0001111011";

      wait for CLK_period*10;
		RESETFIFO <= '0';
		
		wait for CLK_period*5;
		RESET <= '0';
		
		wait for CLK_PERIOD*5;
		EN <= '1';
		for count in 1 to 270 loop
			camInput <= std_logic_vector(unsigned(camInput) + 1);
			wait for CLK_period;
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
