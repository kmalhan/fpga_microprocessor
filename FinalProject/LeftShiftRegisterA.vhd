
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LeftShiftRegisterA is
    generic(N: integer:= 16);
	 port (resetn, E, clock, w, s_L : in  std_logic;
	       D: in std_logic_vector (N-1 downto 0);
			 Q: out std_logic_vector (N-1 downto 0));

end LeftShiftRegisterA;

architecture struct of LeftShiftRegisterA is

signal Qt: std_logic_vector (N-1 downto 0);

begin

	process (resetn, E, clock)
	begin
		if resetn = '0' then
			Qt <= (others => '0');
		
		elsif (clock'event and clock = '1') then
			if E = '1' then
					if s_L = '1' then
								Qt <= D;
					else
						--Qt <= qt(N-2 downto 0)&w;
						Qt(0) <= w;
						
					for i in 1 to N-1 loop
						Qt(i) <= Qt(i-1);							
					end loop;
					
						
					end if;
			end if;
		end if;
	end process;
	
	Q <= Qt;

end struct;
