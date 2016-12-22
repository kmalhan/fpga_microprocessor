
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux8to1 is
   generic (N: INTEGER:= 16); 
	port (a,b,c,d,e,f,g,h: in std_logic_vector (N-1 downto 0);
	      s: in std_logic_vector (2 downto 0);
	      MuxOut: out std_logic_vector (N-1 downto 0));
end Mux8to1;

architecture structure of Mux8to1 is

begin

	with s select
		MuxOut <= a when "000",
		          b when "001",
			       c when "010",
					 d when "011",
		          e when "100",
			       f when "101",
					 g when "110",
			       h when others;
			 
end structure;

