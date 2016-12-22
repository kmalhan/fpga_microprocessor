
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitRegister is
	generic (N: INTEGER:= 4);
		port ( clock, resetn: in std_logic;
				 E: in std_logic; 
				 D: in std_logic_vector (N-1 downto 0);
				 Q: out std_logic_vector (N-1 downto 0));
end BitRegister;

architecture struct of BitRegister is

	signal Qt: std_logic_vector (N-1 downto 0);
	
begin

	process (resetn, E, clock)
	begin
		if resetn = '0' then
			Qt <= (others => '0');
		elsif (clock'event and clock = '1') then
			if E = '1' then	
				Qt <= D;
			end if;
		end if;
	end process;

Q <= Qt;
	
end struct;

