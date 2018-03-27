-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY my_divider_tb IS
  END my_divider_tb;

  ARCHITECTURE behavior OF my_divider_tb IS 

  -- Component Declaration
          COMPONENT my_divider
          PORT(
                  DIVIDEND : IN std_logic_vector (15 downto 0);
                  DIVISOR: IN std_logic_vector(5 downto 0);     
						CLK : IN std_logic;
						--ND : IN std_logic;
                  QUOTIENT : OUT std_logic_vector(15 downto 0);
						RFD : OUT std_logic
						--RDY : OUT std_logic
                  );
          END COMPONENT;

--signal inputs
          SIGNAL DIVIDEND : std_logic_vector (15 downto 0) := (others => '0');
          SIGNAL DIVISOR : std_logic_vector(5 downto 0) := (others => '0');
			 SIGNAL CLK : std_logic := '0';
			 --SIGNAL ND : std_logic := '0';
			 
--signal output
			 SIGNAL QUOTIENT : std_logic_vector(15 downto 0) := (others => '0');
			 SIGNAL RFD : std_logic := '0';
          
   -- Clock period definitions
   constant clk_period : time := 10 ns;
	
  BEGIN

  -- Component Instantiation
          uut: my_divider PORT MAP(
                  DIVIDEND => DIVIDEND,
						DIVISOR => DIVISOR,
						CLK => CLK,
						--ND => ND,
						RFD => RFD,
					--	RDY => RDY,
						QUOTIENT => QUOTIENT			
          );

   -- Clock process definitions
   clk_process :process
   begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
   end process;

  --  Test Bench Statements
     stim_proc : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes
			
			--ND <= '1';
			--wait for 10*CLK_period;
			
        DIVIDEND <= std_logic_vector(to_signed(1100, 16));
		  DIVISOR <= std_logic_vector(to_signed(9, 6));

		for count in 1 to 270 loop
			DIVIDEND <= std_logic_vector(unsigned(DIVIDEND) + 9);
			wait for CLK_period;
		end loop;
        wait; -- will wait forever
     END PROCESS stim_proc;
  --  End Test Bench 

  END;
