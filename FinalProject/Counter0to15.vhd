
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity Counter0to15 is
    Port ( clock : in  STD_LOGIC;
           E : in  STD_LOGIC;
           sclr : in  STD_LOGIC;
			  resetn : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0);
           zC : out  STD_LOGIC); 
end Counter0to15;

architecture struct of Counter0to15 is
	signal Qt: integer range 0 to 15;
begin

	process (clock, E, sclr, resetn)
	begin
	
		if resetn = '0' then
			Qt <= 0;
		
		elsif (clock'event and clock = '1') then
			if E = '1' then
				
				if sclr = '1' or Qt = 15 then
					Qt <= 0;
				else Qt <= Qt + 1;
				
		   	end if;
			end if;
		end if;
	end process;
	
Q <= conv_std_logic_vector(Qt,3);
zC <= '1' when Qt = 15 else '0';

end struct;
