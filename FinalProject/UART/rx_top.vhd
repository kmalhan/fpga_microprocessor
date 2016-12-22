-------------------------------------------------------------------------
-- This is the top level for UART RX
-- It Reveives instruction from computer through UART
-- instruction contains 5 bit operation code
-- 4 bit register selection, and 7 bit input numbers
-- Communication is done by repeating 3 cycle
-- ECE 378 Project
-- Kazumi Malhan
---------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.log2;
use ieee.math_real.ceil;

entity rx_top is
	port (clock, resetn: in std_logic;
			RXD: in std_logic;
			--finish: out std_logic;
			inst: out std_logic_vector(4 downto 0);
			reg: out std_logic_vector(3 downto 0);
			inreg: out std_logic_vector(6 downto 0));
			--Qout: out std_logic_vector(7 downto 0));			
end rx_top;

architecture Behavioral of rx_top is

component my_genpulse
		generic (COUNT: INTEGER:= (10**8)/2); -- (10**8)/2 cycles of T = 10 ns --> 0.5 s
		port (clock, resetn, E: in std_logic;
				Q: out std_logic_vector ( integer(ceil(log2(real(COUNT)))) - 1 downto 0);
				z: out std_logic);
end component;

component my_rege
		generic (N: INTEGER:= 4);
		port ( clock, resetn: in std_logic;
				 E, sclr: in std_logic; -- sclr: Synchronous clear
				 D: in std_logic_vector (N-1 downto 0);
				 Q: out std_logic_vector (N-1 downto 0));
end component;
	
component uart_rx
	   generic(
      DBIT: integer:=8;     -- # data bits
      SB_TICK: integer:=16  -- # ticks for stop bits
   );
   port(
      clk, reset: in std_logic;
      rx: in std_logic;
      s_tick: in std_logic;
      rx_done_tick: out std_logic;
      dout: out std_logic_vector(7 downto 0)
   );
end component;

type state is (S1, S2, S3, S4);
signal y: state;

signal tick, done, donef, EZ, ED, zD: std_logic;
signal dout, doutf: std_logic_vector(7 downto 0);
signal zzD: std_logic_vector(1 downto 0);
signal EOP, ERM, EIN: std_logic;

signal OPD: std_logic_vector(4 downto 0);
signal RMD: std_logic_vector(3 downto 0);
signal IND: std_logic_vector(6 downto 0);

signal Qout: std_logic_vector(7 downto 0);
signal finish: std_logic;

begin
-- Assigning op data
OPD(4) <= Qout(4); OPD(3) <= Qout(3); OPD(2) <= Qout(2); OPD(1) <= Qout(1); OPD(0) <= Qout(0);
-- Assigning rm data
RMD(3) <= Qout(3); RMD(2) <= Qout(2); RMD(1) <= Qout(1); RMD(0) <= Qout(0);
-- Assigning in data
IND(6) <= Qout(6); IND(5) <= Qout(5); IND(4) <= Qout(4); IND(3) <= Qout(3); IND(2) <= Qout(2); IND(1) <= Qout(1); IND(0) <= Qout(0);

-- UART Receiver (from Pong Chu: FPGA Prototyping by VHDL examples)
ta: uart_rx
	generic map (DBIT => 8, SB_TICK => 16)
	port map (clk => clock, reset => resetn, rx => RXD, s_tick => tick, rx_done_tick => done, dout => dout);

-- Counter: Modulo-651 (generating pulse 16 times per bit)
gb: my_genpulse generic map (COUNT => 651) 
	 port map (clock => clock, resetn => resetn, E => EZ, z => tick);	 

-- Counter: count 3 bits (keep track of number of cycles)
ga: my_genpulse generic map (COUNT => 3) 
	 port map (clock => clock, resetn => resetn, E => ED, Q => zzD, z => zD);	 

-- 8-bit register (It keeps the 8 bits comes from UART Receiver)
ra: my_rege generic map (N => 8)
	 port map (clock => clock, resetn => resetn, E => donef, sclr => '0', D => doutf, Q => Qout);
	 
-- 5-bit register (It keeps the 5 bit operation code)
rop: my_rege generic map (N => 5)
	 port map (clock => clock, resetn => resetn, E => EOP, sclr => '0', D => OPD, Q => inst);

-- 4-bit register (It keeps the 4 bit register selection code)
rrm: my_rege generic map (N => 4)
	 port map (clock => clock, resetn => resetn, E => ERM, sclr => '0', D => RMD, Q => reg);

-- 7-bit register (It takes the 7 bit input number)
rin: my_rege generic map (N => 7)
	 port map (clock => clock, resetn => resetn, E => EIN, sclr => '0', D => IND, Q => inreg);

-- Main FSM --------------------------------------------------------------------------------------------------------------
Transitions: process (resetn, clock, tick, done)
begin
	if resetn = '0' then
		y <= S1;
	elsif (clock'event and clock = '1') then
		case y is
			when S1 =>
				if done = '1' then y <= S2; else y <= S1; end if;
				
			when S2 =>
				if tick = '1' then y <= S3; else y <= S2; end if;
				
			when S3 => y <= S4;
			
			when S4 => y <= S1;
			
		end case;
	end if;
end process;

Outputs: process (y, donef, doutf, done, dout, zzD, zD)
begin
	doutf <= "11111111"; donef <= '0'; EOP <= '0'; ERM <= '0'; EIN <= '0'; ED <= '0'; finish <= '0';
	case y is
		when S1 => 
			EZ <= '1';
			doutf <= dout;
			if done = '1' then donef <= '1';end if;
			
		when S2 =>
			EZ <= '1';
			
		when S3 =>
			if zzD = "00" then
				EOP <= '1';
			elsif zzD = "01" then
				ERM <= '1';
			elsif zzD = "10" then
				EIN <= '1';
			end if;
			
		when S4 =>
			if zD ='1' then
				ED <= '1';
			else
				finish <= '1';
				ED <= '1';
			end if;
			
	end case;
end process;

end Behavioral;

