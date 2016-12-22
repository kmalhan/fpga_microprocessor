
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder2To4 is
	port ( w: in std_logic_vector (1 downto 0);
	       E: in std_logic;
			 y: out std_logic_vector (3 downto 0));
end Decoder2To4;

architecture Behavioral of Decoder2To4 is

	signal Ew: std_logic_vector (2 downto 0);
	

begin

	Ew <= E & w;
	with Ew select
		y <= "0001" when "100",
			  "0010" when "101",
			  "0100" when "110",
			  "1000" when "111",
			  "0000" when others;


end Behavioral;

