--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01/12/2017
-- Design Name:   
-- Module Name:   E:/D DRIVE/mscv_sem3/RTIC/project/test_MSCV/readWriteCache_tb.vhd
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
use std.textio.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;

--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
 
ENTITY readWriteCache_tb IS
END readWriteCache_tb;
 
ARCHITECTURE behavior OF readWriteCache_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    
	 -- component CACHE MEMORY
    COMPONENT cache_sample_new
    PORT(
         RESET : IN  std_logic;
         RESETFIFO : IN  std_logic;
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
	 
	 --Component PROCESSOR UNIT
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
    
	--CACHE signals
   --Inputs of cache
   signal RESET : std_logic := '0';
   signal RESETFIFO : std_logic := '0';
   signal CLK : std_logic := '0';
   signal camInput : std_logic_vector(7 downto 0) := (others => '0');
   signal EN : std_logic := '0';
   signal prog_full_thresh : std_logic_vector(9 downto 0) := "0001111011";
	
 	--Outputs of cache
   signal pix1 : std_logic_vector(7 downto 0) := (others => '0');
   signal pix2 : std_logic_vector(7 downto 0):= (others => '0');
   signal pix3 : std_logic_vector(7 downto 0):= (others => '0');
   signal pix4 : std_logic_vector(7 downto 0):= (others => '0');
   signal pix5 : std_logic_vector(7 downto 0):= (others => '0');
   signal pix6 : std_logic_vector(7 downto 0):= (others => '0');
   signal pix7 : std_logic_vector(7 downto 0):= (others => '0');
   signal pix8 : std_logic_vector(7 downto 0):= (others => '0');
   signal pix9 : std_logic_vector(7 downto 0):= (others => '0');
   signal winReady : std_logic := '0';

-- PROCESSOR signals
   --Inputs of Processor
   signal pixel1 : std_logic_vector(7 downto 0) := (others => '0');
   signal pixel2 : std_logic_vector(7 downto 0):= (others => '0');
   signal pixel3 : std_logic_vector(7 downto 0):= (others => '0');
   signal pixel4 : std_logic_vector(7 downto 0):= (others => '0');
   signal pixel5 : std_logic_vector(7 downto 0):= (others => '0');
   signal pixel6 : std_logic_vector(7 downto 0):= (others => '0');
   signal pixel7 : std_logic_vector(7 downto 0):= (others => '0');
   signal pixel8 : std_logic_vector(7 downto 0):= (others => '0');
   signal pixel9 : std_logic_vector(7 downto 0):= (others => '0');
	
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
	signal PEN : std_logic := '0';
	
	--Outputs of Processor
   signal result : std_logic_vector(15 downto 0);
	signal PRDY : std_logic;

	signal counterCut2 : std_logic_vector(7 downto 0) := (others => '0');
   --flags used by process in simulation
	signal readfinishFLAG : std_logic := '0';
	signal processfinishFLAG : std_logic := '0';
	signal writeFLAG : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   --READ PROCESS
   read_process: process
   FILE vectors : text;
  
   variable Iline: line;
   variable PIXEL_ORIG_VAR :std_logic_vector (7 downto 0);			--variable for PIXEL_ORIG (8bits)
   --variable PIXEL_PROC_var :std_logic_vector (7 downto 0);
    
   begin
	   --pull reset and resetfifo and pull down enable
	   RESET <= '1';
	   RESETFIFO <= '1';
	   EN <= '0';
	 
	   wait for CLK_period*10;
	   RESETFIFO <= '0'; --Release Reset of FIFO First because it takes 3-4 clock cyles to get ready
		
	   wait for CLK_period*5;
	   RESET <= '0'; --Release eset of complete module
		
	   wait for CLK_PERIOD*5;
	   EN <= '1'; --Enable Input of camera

		--open file to read input pixels
      file_open (vectors,"Lena128x128g_8bits.dat", read_mode);		--open and read the file
 
    
      while not endfile(vectors) loop	
         readline (vectors,Iline);			--Read the whole line from the file, vector -> Iline
         read (Iline,PIXEL_ORIG_VAR);		--Read the contents of the line from the file into a variable PIXEL_ORIG_VAR
            
         camInput <= PIXEL_ORIG_VAR; --connect input pixel to CACHE Input
		   wait for CLK_period;    
      
      end loop;
	   readfinishFLAG <= '1'; --After reading of pixels the flag is pulled up
      file_close (vectors);
	   wait;

   end process; --END READ PROCESS
	
	--PROCESSING
   process_process : process
   begin
	   wait until (winReady = '1'); --wait until the CACHE tells that pixels are ready for processing
	
	   while winReady = '1' loop
		   pixel1 <= pix1;
         pixel2 <= pix2;
         pixel3 <= pix3;
         pixel4 <= pix4;
         pixel5 <= pix5;
         pixel6 <= pix6;
         pixel7 <= pix7;
         pixel8 <= pix8;
         pixel9 <= pix9;
			
			--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			--HERE YOU CAN CHANGE THE KERNEL VALUES AND DIVIDE BY VALUE
		   kernal1 <= std_logic_vector(to_signed(1, 4));
		   kernal2 <= std_logic_vector(to_signed(2, 4));
		   kernal3 <= std_logic_vector(to_signed(1, 4));
		   kernal4 <= std_logic_vector(to_signed(0, 4));
		   kernal5 <= std_logic_vector(to_signed(0, 4));
		   kernal6 <= std_logic_vector(to_signed(0, 4));
		   kernal7 <= std_logic_vector(to_signed(-1, 4));
		   kernal8 <= std_logic_vector(to_signed(-2, 4));
		   kernal9 <= std_logic_vector(to_signed(-1, 4));
		
		   divideby <= std_logic_vector(to_signed(1, 6));
			--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			
		   PEN <= winReady; -- Cache flag is connected to Enable of Processor unit
			
		   wait for CLK_period;
 		
			--if reading pixels is finished, wait for 25 clokc cycles for processing to finish and pull up processor finish flag
    		if (readfinishFLAG = '1') then
			   wait for 25*CLK_period;
			   processfinishFLAG <= '1';
			   exit;
		   end if;
      end loop;

   end process; --END OF PROCESSING MODULE
 
   --WRITE PROCESS
   write_process : process
 
	FILE results : text;
	variable OLine : line;
	
	begin
	   --open file to write the pixels
      file_open (results,"Lena128x128g_8bits_r.dat", write_mode);	--open and write results file
 
	   wait until (PRDY ='1'); --wait until PRDY flag is pulled up of processor module
	 
	   wait for 2*CLK_period;

	   while PRDY = '1' loop
	 
         --CounterCut2 is used to count columns as last column and first column should be ignored, this 
			--is done by this counterCut2 using logic as below,
		   if ((counterCut2 /= "01111111") and (counterCut2 /= "01111110")) then
				--if counterCut2 is not 126 or 127 then write 
			   writeFLAG <= '1';
		   else
				--if counterCut2 is 127 then make it zero again for next row
			   if (counterCut2 = "01111111") then
				   counterCut2 <= "00000000";
				   wait for CLK_period;
			   end if;
				--and dont write those last and first row pixel answers
			   writeFLAG <= '0';
    		end if;
			
			-- write when writeflag is pulledup
		   if (writeFLAG = '1') then
			   write (Oline, result, right, 2); --write the line
			   writeline (results, Oline);	--write the contents into the file
		   end if;

			--increment counter for every pixel
			counterCut2 <= std_logic_vector(unsigned(counterCut2) + 1);
			wait for CLK_period;

			--if processing is finished then writing stops
		   if (processfinishFLAG = '1') then
			   write (Oline, result, right, 2); --write the line
			   writeline (results, Oline);	--write the contents into the file
			   wait for CLK_period;
			   exit;
		   end if;
			
	   end loop;
	 
	   file_close (results);		--Close the file after writing
      wait;
	 
   end process; --END OF WRITING MODULE
 

 	-- Instantiate the Unit Under Test (UUT)
   cache: cache_sample_new PORT MAP (
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
		  
	processor: processor_sample PORT MAP (
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

END;
