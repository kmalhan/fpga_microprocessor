
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
	port( cin, x, y : in std_logic;
         s, cout   : out std_logic);
end FullAdder;

architecture structure of FullAdder is

begin

	s <= x xor y xor cin;
	cout <= (x and y) or (x and cin) or (y and cin);
	
end structure;