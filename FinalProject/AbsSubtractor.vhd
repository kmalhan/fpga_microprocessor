
-- ECE 378 - Final Project
-- 8-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity AbsSubtractor is
	generic (N: INTEGER:= 16);
	port ( x,y: in std_logic_vector (N-1 downto 0);
	       z: out std_logic_vector (N-1 downto 0));
end AbsSubtractor;

architecture struct of AbsSubtractor is

	component AddSub
		generic (N: INTEGER:= 16);
		port(	addsub: in std_logic;
				x,y: in std_logic_vector (N-1 downto 0);
				s: out std_logic_vector (N-1 downto 0);
				overflow: out std_logic;
				cout: out std_logic);
	end component;
 
 signal XmY,YmX: std_logic_vector (N-1 downto 0);
 signal sel: std_logic;
 
begin

-- A - B
AB: AddSub generic map (N => N)
    port map (addsub => '1', x => x, y => y , s => XmY);

-- B - A
BA: AddSub generic map (N => N)
    port map (addsub => '1', x => y, y => x , s => YmX);

--MUX select
	sel <= '1' when y < x else '0';

-- MUX output
	z <= XmY when sel = '1' else 
		  YmX;

end struct;


