--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:37 04/11/2015
-- Design Name:   
-- Module Name:   C:/Users/mmnahed/Desktop/Final Project/Final/ShiftTest.vhd
-- Project Name:  Final
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FinalTopLevel
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
 
ENTITY ShiftTest IS
END ShiftTest;
 
ARCHITECTURE behavior OF ShiftTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FinalTopLevel
    PORT(
         resetn : IN  std_logic;
         clock : IN  std_logic;
         w : IN  std_logic;
         IR : IN  std_logic_vector(8 downto 0);
         Input : IN  std_logic_vector(6 downto 0);
         Output : OUT  std_logic_vector(15 downto 0);
         done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal resetn : std_logic := '0';
   signal clock : std_logic := '0';
   signal w : std_logic := '0';
   signal IR : std_logic_vector(8 downto 0) := (others => '0');
   signal Input : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(15 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FinalTopLevel PORT MAP (
          resetn => resetn,
          clock => clock,
          w => w,
          IR => IR,
          Input => Input,
          Output => Output,
          done => done
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      resetn <= '1'; Input <= "0000010";
		
		IR <= "000000000"; w <= '1'; wait for clock_period*2;   
		
		w <='0'; wait for clock_period*2;  
		
		IR <= "011000000"; w <= '1'; wait for clock_period*2;
		
		w <='0'; wait for clock_period*2;
		
		IR <= "010100000"; w <= '1'; wait for clock_period*2;
		
		w <='0'; wait for clock_period*2; 
		
		IR <= "011010000"; w <= '1'; wait for clock_period*2;
		
		w <='0'; wait for clock_period*2;
		
		IR <= "010100000"; w <= '1'; wait for clock_period*2;
		
		w <='0'; wait for clock_period*2;  
		
		IR <= "011010000"; w <= '1'; wait for clock_period*2;
		
		w <='0'; wait for clock_period*2;

      wait;
   end process;

END;
