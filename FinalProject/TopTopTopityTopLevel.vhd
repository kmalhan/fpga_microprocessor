
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopTopTopityTopLevel is
			port ( resetn,clock,RXDInput: in std_logic;
					LED: out std_logic_vector(4 downto 0);
					 TXDOutput,done: out std_logic);	
end TopTopTopityTopLevel;

architecture Behavioral of TopTopTopityTopLevel is

	component MicroTopLevel
			port ( resetn,clock,w: in std_logic;
	             IR: in std_logic_vector (8 downto 0); 
					 Input: in std_logic_vector (6 downto 0);
					 Output: out std_logic_vector (15 downto 0);
					 done: out std_logic);	
	end component;
	
	component rx_top
			port ( clock, resetn: in std_logic;
					 RXD: in std_logic;
					 finish: out std_logic;
					 inst: out std_logic_vector(4 downto 0);
					 reg: out std_logic_vector(3 downto 0);
					 inreg: out std_logic_vector(6 downto 0));
	end component;
	
	component uart_tx
			port ( resetn, clock: in std_logic;
			       E: in std_logic;
					 SW: in std_logic_vector (15 downto 0);
					 TXD, done: out std_logic);
	end component;
	
	signal sw: std_logic;
	signal sinst: std_logic_vector (4 downto 0);
	signal sreg: std_logic_vector (3 downto 0);
	signal sinreg: std_logic_vector (6 downto 0);
	signal IRa: std_logic_vector (8 downto 0);
	signal MicroOut: std_logic_vector (15 downto 0);
	signal MicroDone: std_logic;

begin
	LED(4) <= sinst(4);
	LED(3) <= sinst(3);
	LED(2) <= sinst(2);
	LED(1) <= sinst(1);
	LED(0) <= sinst(0);
	
	
	
	IRa <= sinst(4 downto 0) & sreg(3 downto 0);

	F0: MicroTopLevel port map (clock => clock, resetn => resetn, w => sw, IR => IRa, Input => sinreg, Output => MicroOut, done => MicroDone);
	
	F1: rx_top port map (clock => clock, resetn => resetn, RXD => RXDInput, inst => sinst, reg => sreg, inreg => sinreg, finish => sw);
	
	F2: uart_tx port map (clock => clock, resetn => resetn, E => MicroDone, SW => MicroOut, TXD => TXDOutput, done => open);

end Behavioral;

