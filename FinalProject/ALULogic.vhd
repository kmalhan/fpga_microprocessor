 
-- ECE 378 - Final Project
-- 8-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity ALULogic is
   generic (N: INTEGER:= 16);
	port ( A,B: in std_logic_vector (N-1 downto 0);
			 sel: in std_logic_vector (3 downto 0);
	       y: out std_logic_vector (N-1 downto 0));
end ALULogic;

architecture structure of ALULogic is

	signal GreaterThan: std_logic_vector (N-1 downto 0);
	signal LessThan: std_logic_vector (N-1 downto 0);
	signal EqualTo: std_logic_vector (N-1 downto 0);
	signal Binary: std_logic_vector (N-1 downto 0);
	signal Gray: std_logic_vector (N-1 downto 0);
	signal Reset: std_logic_vector (N-1 downto 0);

begin

--Copmaritor---------------------------
Comparitor : process (A,B)
	begin
-- Greater Than or Less Than Operations
		if (A > B) then
			GreaterThan <= A;
			LessThan <= B;
		else 
			GreaterThan <= B;
			LessThan <= A;
		end if;
		
--Equal To Operation	
		if (A = B) then
			EqualTo <= A;
		else
			EqualTo <= "0000000000000000";
		end if;  
end process Comparitor;
------------------------------------

--Binary to Gray-------------------- 
	Gray(15) <= A(15);
	Gray(14) <= A(15) xor A(14);
	Gray(13) <= A(14) xor A(13);
	Gray(12) <= A(13) xor A(12);
	Gray(11) <= A(12) xor A(11);
	Gray(10) <= A(11) xor A(10);
	Gray(9) <= A(10) xor A(9);
	Gray(8) <= A(9) xor A(8);
	Gray(7) <= A(8) xor A(7);
	Gray(6) <= A(7) xor A(6);
	Gray(5) <= A(6) xor A(5);
	Gray(4) <= A(5) xor A(4);
	Gray(3) <= A(4) xor A(3);
	Gray(2) <= A(3) xor A(2);
	Gray(1) <= A(2) xor A(1);
	Gray(0) <= A(1) xor A(0);
-------------------------------------
	
--Gray to Binary---------------------
	Binary(15) <= A(15);
	Binary(14) <= Binary(15) xor A(14);
	Binary(13) <= Binary(14) xor A(13);
	Binary(12) <= Binary(13) xor A(12);
	Binary(11) <= Binary(12) xor A(11);
	Binary(10) <= Binary(11) xor A(10);
	Binary(9) <= Binary(10) xor A(9);
	Binary(8) <= Binary(9) xor A(8);
	Binary(7) <= Binary(8) xor A(7);
	Binary(6) <= Binary(7) xor A(6);
	Binary(5) <= Binary(6) xor A(5);
	Binary(4) <= Binary(5) xor A(4);
	Binary(3) <= Binary(4) xor A(3);
	Binary(2) <= Binary(3) xor A(2);
	Binary(1) <= Binary(2) xor A(1);
	Binary(0) <= Binary(1) xor A(0);
--------------------------------------

--Reset 
	Reset <= "0000000000000000";
	
	with sel select
			y <= not(A)       when "0000",
			     not(B)       when "0001",
				  A and B      when "0010",
				  A or  B      when "0011",
				  A nand B     when "0100",
				  A nor B      when "0101",
				  A xor B      when "0110",
				  A xnor B     when "0111",
				  GreaterThan  when "1000",
			     LessThan     when "1001",
				  EqualTo      when "1010",
				  Binary       when "1011",
				  Gray         when "1100",
				  Reset        when "1111",
				 (others => '0') when others;

end structure;

