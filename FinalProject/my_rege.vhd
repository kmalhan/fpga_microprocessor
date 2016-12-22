
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- N-bit Register
-- E = '1', sclr = '0' --> Input data 'D' is copied on Q
-- E = '1', sclr = '1' --> Q is cleared (0)
entity my_rege is
   generic (N: INTEGER:= 4);
	port ( clock, resetn: in std_logic;
	       E, sclr: in std_logic; -- sclr: Synchronous clear
			 D: in std_logic_vector (N-1 downto 0);
	       Q: out std_logic_vector (N-1 downto 0));
end my_rege;

architecture Behavioral of my_rege is

	signal Qt: std_logic_vector (N-1 downto 0);
	
begin

	process (resetn, clock)
	begin
		if resetn = '0' then
			Qt <= (others => '0');
		elsif (clock'event and clock = '1') then
			if E = '1' then	
				if sclr = '1' then
					Qt <= (others => '0');
				else
					Qt <= D;
				end if;
			end if;
		end if;
		
	end process;

	Q <= Qt;
end Behavioral;

