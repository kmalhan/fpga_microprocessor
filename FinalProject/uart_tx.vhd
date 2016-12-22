
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.log2;
use ieee.math_real.ceil;

entity uart_tx is
	port (resetn, clock: in std_logic;
			E: in std_logic;
			SW: in std_logic_vector (15 downto 0);
			TXD, done: out std_logic);
end uart_tx;

architecture Behavioral of uart_tx is

	component my_genpulse
		generic (COUNT: INTEGER:= (10**8)/2); -- (10**8)/2 cycles of T = 10 ns --> 0.5 s
		port (clock, resetn, E: in std_logic;
				Q: out std_logic_vector ( integer(ceil(log2(real(COUNT)))) - 1 downto 0);
				z: out std_logic);
	end component;
	
	component my_pashiftreg
		generic (N: INTEGER:= 4;
					DIR: STRING:= "LEFT");
		port ( clock, resetn: in std_logic;
				 din, E, s_l: in std_logic; -- din: shiftin input
				 D: in std_logic_vector (N-1 downto 0);
				 Q: out std_logic_vector (N-1 downto 0);
				 shiftout: out std_logic);
	end component;
	
	type state is (S1, S2, S3, S4, S5, S5e, S6, S7, S8);
	signal y: state;	
	
	signal SWQ: std_logic_vector (15 downto 0);
	signal EQ, zQ, zC, EC, ER, LR, so, EP, zP, ED, zD, EK, LK, ou: std_logic;
	signal EE, LE, EI, zI, CR: std_logic;
	
begin

-- Counter: Modulo-7 (keep track of how many appending bits are sent)
gb: my_genpulse generic map (COUNT => 7) 
	 port map (clock => clock, resetn => resetn, E => EQ, z => zQ);

-- Counter: 1/9600 s (keeping the count for lenth of one bit)
ga: my_genpulse generic map (COUNT => 10416) -- aprox, real one is 10416.6666
	 port map (clock => clock, resetn => resetn, E => EC, z => zC);

-- Counter: waitign time 100 (waiting time inbetween the cycle)
gc: my_genpulse generic map (COUNT => 100) 
	 port map (clock => clock, resetn => resetn, E => EP, z => zP);

-- Counter: Modulo-8 for sending cr bit
ge: my_genpulse generic map (COUNT => 8) 
	 port map (clock => clock, resetn => resetn, E => EI, z => zI);
	 
-- Counter: Modulo-17 (keep track of number of cycles)
gd: my_genpulse generic map (COUNT => 17) 
	 port map (clock => clock, resetn => resetn, E => ED, z => zD);
	
-- Shift Registers (16 bit binary number from processor)
sa: my_pashiftreg generic map (N => 16, DIR => "LEFT")
    port map (clock => clock, resetn => resetn, din => '0', E => ER, s_l => LR, D => SW, shiftout => so);

-- Shift Registers (appending bit to convert to ASC2)
sb: my_pashiftreg generic map (N => 7, DIR => "RIGHT")
    port map (clock => clock, resetn => resetn, din => '0', E => EK, s_l => LK, D => "0011000", shiftout => ou);
	 
-- Shift Registers (it contains ASC2 of Carriage Return)
se: my_pashiftreg generic map (N => 8, DIR => "RIGHT")
    port map (clock => clock, resetn => resetn, din => '0', E => EE, s_l => LE, D => "00001101", shiftout => CR);
	
-- Main FSM:-----------------------------------------------------------------------------------------------------
	Transitions: process (resetn, clock, zC, zQ, E, zP, zD, zI)
	begin
		if resetn = '0' then -- asynchronous signal
			y <= S1; -- if resetn asserted, go to initial state: S1			
		elsif (clock'event and clock = '1') then
			case y is
				when S1 =>
					if E = '1' then y <= S1; else y <= S2; end if;
				
				when S2 =>
					if E = '1' then y <= S4; else y <= S2; end if;
				
				when S3 =>
					if E = '0' then y <= S4; else y <= S3; end if;
					
				when S4 =>
					if zC = '1' then
						if zD = '1' then y <= S5e; else y <= S5; end if;
					else 
						y <= S4; 
					end if;
					
				when S5e =>
					if zC = '1' then
						if zI = '1' then y <= S7; else y <= S5e; end if;
					else
						y <= S5e;
					end if;
				
				when S5 =>
					if zC = '1' then y <= S6; else y <= S5; end if;
					
				when S6 =>
					if zC = '1' then
						if zQ = '1' then y <= S7; else y <= S6; end if;
					else
						y <= S6;
					end if;
					
				when S7 => 
					if zC = '1' then y <= S8; else y <= S7; end if;
					
				when S8 =>
					if zC = '1' then
						if zP = '1' then
							if zD = '1' then y <= S1; else y <= S3; end if;
						else
							y <= S8;
						end if;
					else 
						y <= S8;
					end if;
					
			end case;			
		end if;		
	end process;
	
	Outputs: process (y, so, zC, zQ, E, zP, ZD, ou, CR, zI)
	begin
		-- Initialization of FSM outputs:
		TXD <= '0'; ER <= '0'; LR <= '0'; EC <= '0'; EQ <= '0';
		EP <= '0'; ED <= '0'; done <= '0'; EK <= '0'; LK <= '0';
		EE <= '0'; LE <= '0'; EI <= '0';
		case y is
			when S1 =>
				TXD <= '1';
				
			when S2 =>
				TXD <= '1';
				if E = '1' then LR <= '1'; ER <= '1'; EK <= '1'; LK <= '1'; EE <= '1'; LE <= '1'; end if;

			when S3 =>
				TXD <= '1';
				if E = '0' then ER <= '1'; EK <= '1'; LK <= '1'; end if;
			
			when S4 =>
				EC <= '1';
				
			when S5e =>
				TXD <= CR;
				EC <= '1';
				if zC = '1' then EE <= '1';
					if zI = '1' then EI <= '1'; else EI <= '1'; end if;
				end if;
			
			when S5 =>
				TXD <= so;
				EC <= '1';
				
			when S6 =>
				TXD <= ou;
				if zC = '1' then EC <= '1'; EK <= '1';
					if zQ = '1' then EQ <= '1'; else EQ <= '1'; end if;
				else
					EC <= '1';
				end if;
				
			when S7 => 
				TXD <= '1';
				EC <= '1';
				
			when S8 =>
				TXD <= '1';
				EC <= '1';
				if zC = '1' then
					if zP = '1' then EP <= '1';
						if zD = '1' then done <= '1'; ED <= '1'; else ED <= '1'; end if;
					else EP <= '1'; end if;
				end if;
						
		end case;
	end process;
 
end Behavioral;

