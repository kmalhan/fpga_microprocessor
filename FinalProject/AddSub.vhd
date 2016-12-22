
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AddSub is
	generic (N: INTEGER:= 16);
	port(	addsub: in std_logic;
		   x,y: in std_logic_vector (N-1 downto 0);
         s: out std_logic_vector (N-1 downto 0);
			overflow: out std_logic;
		   cout: out std_logic);
end AddSub;

architecture structure of AddSub is

	component FullAdder
		port( cin, x, y : in std_logic;
				s, cout   : out std_logic);
	end component;

	signal c: std_logic_vector (N downto 0);
	signal yx: std_logic_vector (N-1 downto 0);
	
begin

   c(0) <= addsub; cout <= c(N);
	overflow <= c(N) xor c(N-1);	
	
	gi: for i in 0 to N-1 generate
			   yx(i) <= y(i) xor addsub;
				Fi: FullAdder port map (cin => c(i), x => x(i), y => yx(i), s => s(i), cout => c(i+1));
	    end generate;
   
end structure;