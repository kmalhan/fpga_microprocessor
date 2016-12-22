
-- ECE 378 - Final Project
-- 8-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.math_real.log2;
use ieee.math_real.ceil;

entity GenPulse is	
	generic (COUNT: INTEGER:= (10**2)/2);
	port (clock, resetn, E, sclr: in std_logic;
			Q: out std_logic_vector ( integer(ceil(log2(real(COUNT)))) - 1 downto 0);
			z: out std_logic);
end GenPulse;

architecture Behavioral of GenPulse is
	constant nbits: INTEGER:= integer(ceil(log2(real(COUNT))));
	signal Qt: std_logic_vector (nbits -1 downto 0);
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
					if Qt = conv_std_logic_vector (COUNT-1,nbits) then
						Qt <= (others => '0');
					else
						Qt <= Qt + conv_std_logic_vector (1,nbits);
					end if;
				end if;
			end if;
		end if;
	end process;
	
	z <= '1' when Qt = conv_std_logic_vector (COUNT-1,nbits) else '0';
   Q <= Qt;
	
end Behavioral;
