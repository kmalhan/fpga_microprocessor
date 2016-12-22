
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
	generic (N: INTEGER:= 16);
	port ( s_l,resetn: std_logic;
			 A,B: in std_logic_vector (N-1 downto 0);
			 sel: in std_logic_vector (4 downto 0);
			 y: out std_logic_vector (N-1 downto 0));
end ALU;

architecture structure of ALU is

	component ALUArithmetic
		generic (N: INTEGER:= 16);
		port ( resetn,s_l: in std_logic;
		       A,B: in std_logic_vector (N-1 downto 0);
				 sel: in std_logic_vector (3 downto 0);
				 y: out std_logic_vector (N-1 downto 0));
	end component;
	
	component ALULogic
		generic (N: INTEGER:= 16);
		port ( A,B: in std_logic_vector (N-1 downto 0);
				 sel: in std_logic_vector (3 downto 0);
			    y: out std_logic_vector (N-1 downto 0));
	end component;

	signal ya, yb: std_logic_vector (N-1 downto 0);
	
begin

F1: ALUArithmetic generic map (N => N)
    port map (A => A, B => B, sel => sel (3 downto 0), s_l => s_l, resetn => resetn, y => ya);
	 
F2: ALULogic generic map (N => N)
    port map (A => A, B => B, sel => sel (3 downto 0), y => yb);
	 
	 with sel(4) select
			y <= ya when '0',
			     yb when others;

end structure;

