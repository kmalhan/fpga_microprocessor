
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DividerFSM is
    Port ( clock : in  STD_LOGIC;
           resetn : in  STD_LOGIC;
           cout : in  STD_LOGIC;
           E : in  STD_LOGIC;
           zC : in  STD_LOGIC;
           LAB : out  STD_LOGIC;
           EA : out  STD_LOGIC;
           EC : out  STD_LOGIC;
           sclrC : out  STD_LOGIC;
           sclrR : out  STD_LOGIC;
           LR : out  STD_LOGIC;
           ER : out  STD_LOGIC;
           done : out  STD_LOGIC);
end DividerFSM;

architecture struct of DividerFSM is
type state is (S1, S2, S3);
signal y: state;

begin

Transitions: process (clock, resetn, E, zC)
	begin 
		if resetn = '0' then
			y <= S1;
		elsif (clock'event and clock = '1') then
			case y is
				when S1 =>
					if E = '1' then y <= S2; else y <= S1; end if;
				when S2 =>
					if zC = '1' then y <= S3; else y <= S2; end if;
				when S3 =>
					if E = '1' then y <= S3; else y <= S1; end if;
			end case;
		end if;
	end process;
	
Outputs: process (cout, E, zC, y)
	begin
		LAB <= '0';
		EA <= '0';
		EC <= '0';
		sclrC <= '0';
		sclrR <= '0';
		LR <= '0';
		ER <= '0';
		done <= '0';
		
		case y is
			
			when S1 =>
				sclrR <= '1';
				ER <= '1';
				EC <= '1';
				sclrC <= '1';
				if E = '1' then
					LAB <= '1';
					EA <= '1';
				end if;
					
			when S2 =>
				ER <= '1';
				EA <= '1';
				if cout = '1' then
					LR <= '1';
				end if;
				if zC = '0' then
					EC <= '1';
				end if;
					
			when S3 =>
				done <= '1';
				
		end case;
	end process;
			
end struct;

