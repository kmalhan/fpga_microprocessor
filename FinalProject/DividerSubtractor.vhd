
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DividerSubtractor is
	generic (N: INTEGER:= 17);
		port(	x, y     : in std_logic_vector (N-1 downto 0);
				s        : out std_logic_vector (N-1 downto 0);
				cout     : out std_logic);
end DividerSubtractor;

architecture struct of DividerSubtractor is
	
	component FullAdder
		port( cin, x, y : in std_logic;
				s, cout   : out std_logic);
	end component;

	signal c: std_logic_vector (N downto 0);
	signal yt: std_logic_vector (N-1 downto 0);
	
begin

   c(0) <= '1'; 
	cout <= c(N);

gi: for i in 0 to N-1 generate
			   yt(i) <= y(i) xor '1';
				fi: FullAdder port map (cin => c(i), x => x(i), y => yt(i), s => s(i), cout => c(i+1));
	    end generate;
end struct;

