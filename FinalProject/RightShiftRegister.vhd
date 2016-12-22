
-- ECE 378 - Final Project
-- 8-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RightShiftRegister is
    Port ( reset,din,s_l : in STD_LOGIC;
			  D : in STD_LOGIC_VECTOR (15 downto 0);
           Q : out STD_LOGIC_VECTOR (15 downto 0));
end RightShiftRegister;

architecture Behavioral of RightShiftRegister is

	signal Qt: std_logic_vector (15 downto 0);
	
begin

process (reset,din,s_l,D)
	begin
		if reset = '0' then
			Qt <= (others => '0');
		else
			if s_l = '1' then
				Qt <= D;					
			else
				Qt <= din & D(15 downto 1);								
			end if;		
		end if;	
	end process;
	Q <= Qt;
end Behavioral;

