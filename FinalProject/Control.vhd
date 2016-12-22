
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control is
	port(w,clocky,resetny,z: in std_logic;
			IR: in std_logic_vector(8 downto 0);
			SEL: out std_logic_vector(2 downto 0);
			E_A, E_G, E_IN, E_OUT, done, E_R0, E_R1,E_R2,E_R3,s_L,E_DIV,E_C: out std_logic;
			op: out std_logic_vector (4 downto 0));
end Control;

architecture Behavioral of Control is

component Decoder2To4
	port ( w: in std_logic_vector (1 downto 0);
	       E: in std_logic;
			 y: out std_logic_vector (3 downto 0));
	end component;
	
component Register9Bit
	generic (N: INTEGER:= 4);
	port ( clock, resetn: in std_logic;
	       E: in std_logic; -- sclr: Synchronous clear
			 D: in std_logic_vector (N-1 downto 0);
	       Q: out std_logic_vector (N-1 downto 0));
	end component;
	
--Declaring Signals 
	Signal E_IR, Ex: std_logic;
	Signal f: std_logic_vector(4 downto 0);
	Signal IRq: std_logic_vector(8 downto 0);
	Signal Rx, Ry: std_logic_vector(1 downto 0);
	
--Declaring States 
		type state is (S1,S2,S3,S4,S5a,S5b,S6a,S6b,S7a,S7b,S8a,S8b,S9a,S9b,S10a,S10b,S11a,S11b,S12a,S12b,S13a,S13b,S14a,S14b,S15a,S15b,S16a,S16b,S17a,S17b,S18a,S18b,S19a,S19b,S20a,S20b,S21a,S21b,S22a,S22b,S23a,S23b,S24,S25a,S25b,S26a,S26b,S27);
		signal st: state;
		
begin	
---Maping for opcode(f) and Rx and Ry
	f(4)<= IRq(8);
	f(3)<= IRq(7);
	f(2)<= IRq(6);
	f(1)<= IRq(5);
	f(0)<= IRq(4);
	Ry(1)<= IRq(3);
	Ry(0)<= IRq(2);
	Rx(1)<= IRq(1);
	Rx(0)<= IRq(0);

-- port map register 
R0: Register9Bit generic map( N =>9)
				port map( clock=>clocky, resetn=>resetny, E=>E_IR, D=>IR, Q=>IRq);

--port map decoder 
D0: Decoder2To4 port map( w =>RX, E=>Ex, y(0)=>E_R0, y(1)=>E_R1, y(2)=>E_R2, y(3)=>E_R3);

--------------------------------------------------------------------------------------------------------------
--FSM
--------------------------------------------------------------------------------------------------------------
Transitions: process(resetny, clocky, w, f,z)
begin
	if resetny ='0' then --asynchronous clear 
			st <= S1; -- if resetn asserted to to initial state 
	elsif (clocky'event and clocky='1') then 
		case st is 
			when S1 => if w ='1' then st <=S2; else st <= S1; end if;
			when S2 => if f ="00000" or f="01100" or f="01101" or f="01110" then st <= S27;
							elsif f ="00001" then st <= S3;
							elsif f ="00010" then st <= S4;
							elsif f ="00110" then st <= S5a;
							elsif f ="00111" then st <= S6a;
							elsif f ="01000" then st <= S7a;
							elsif f ="01001" then st <= S8a;
							elsif f ="01010" then st <= S9a;
							elsif f ="01011" then st <= S10a;
							elsif f ="10000" then st <= S11a;
							elsif f ="10010" then st <= S12a;
							elsif f ="10011" then st <= S13a;
							elsif f ="10100" then st <= S14a;
							elsif f ="10101" then st <= S15a;
							elsif f ="10110" then st <= S16a;
							elsif f ="10111" then st <= S17a;
							elsif f ="11000" then st <= S18a;
							elsif f ="11001" then st <= S19a;
							elsif f ="11010" then st <= S20a;
							elsif f ="11011" then st <= S21a;
							elsif f ="11100" then st <= S22a;
							elsif f ="11111" then st <= S23a;
							elsif f ="11101" then st <= S25a;
							elsif f ="11110" then st <= S26a;
							else st <= S24;
							end if;
			when S3 => st <= S27; 
			
			when S4 => st <= S27; 
			
			when S5a => st <= S5b; 
			when S5b => st <= S27;
			
			when S6a => st <= S6b;
			when S6b => st <= S27;
			
			when S7a => st <= S7b;
			when S7b => st <= S27;
			
			when S8a => st <= S8b;
			when S8b => st <= S27;
			
			when S9a => st <= S9b;
			when S9b => st <= S27;
			
			when S10a => st <= S10b;
			when S10b => st <= S27;
			
			when S11a => st <= S11b;
			when S11b => st <= S27;
			
			when S12a => st <= S12b;
			when S12b => st <= S27;
			
			when S13a => st <= S13b;
			when S13b => st <= S27;
			
			when S14a => st <= S14b;
			when S14b => st <= S27;
			
			when S15a => st <= S15b;
			when S15b => st <= S27;
			
			when S16a => st <= S16b; 
			when S16b => st <= S27;
			
			when S17a => st <= S17b; 
			when S17b => st <= S27;
			
			when S18a => st <= S18b; 
			when S18b => st <= S27;
			
			when S19a => st <= S19b; 
			when S19b => st <= S27;
			
			when S20a => st <= S20b; 
			when S20b => st <= S27;
			
			when S21a => st <= S21b;
			when S21b => st <= S27;
			
			
			when S22a => st <= S22b;
			when S22b => st <= S27;
			
			when S23a => st <= S23b; 
			when S23b => st <= S27;
			
			when S24 => st <= S27;
			
			when S25a => if z='1' then st <= S25b; else st <= S25a; end if;
			when S25b => st <= S27;
			
			when S26a => if z='1' then st <= S26b; else st <= S26a; end if;
			when S26b => st <= S27;
			
			when S27 => if w='0' then st <=S1; else st <= S27;end if;
		end case;
	end if;
end process;


Outputs: process (st,w, f,Rx,Ry)
begin
	-------Initialize Values 
	SEL <= "000"; E_A <='0'; E_G <='0'; op <="00000"; E_IN <='0'; E_OUT <='0'; done<='0'; E_IR <='0'; Ex <='0'; s_l<='0';E_C <='0';E_DIV<='0';
	case st is 
		when S1 =>
			if w='1' then E_IR <='1'; end if;
		When S2 =>
			if f="00000" then --load in
				E_IN <='1';
			elsif f="00001" then -- Increment Rx, uses RX onto B
				SEL <= '1'& Rx;
				E_G <= '1';
				op <= "00100";
			elsif f="00010" then --deincrement Rx, load back onto Rx
				SEL <= '1'& Rx;
				E_G <= '1';
				op <= "00101";
			elsif f="00110" then --Add Rx and RY, load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="00111" then --Subtract Rx by Ry, load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="01000" then -- |Subtract Rx by Ry|, load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="01001" then -- Multiply RX by Ry, load Rx onto A 
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="01010" then --left shift RX, load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
				s_L <= '0';
			elsif f="01011" then --right shift RX, load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
				s_L <= '0';
			elsif f ="01100" then --load Rx from In
				SEL <= "000";
				Ex <='1';
			elsif f="01101" then -- load the output from Ry
				SEL <= '1'& Ry;
				E_Out <= '1';
			elsif f="01110" then --copy Ry onto Rx
				SEL <= '1'& Ry;
				Ex <= '1';
			elsif f="10000" then ---Not RX, load RX onto A
				SEL <= '1' & Rx;
				E_A <= '1';
			elsif f="10010" then --Rx AND Ry, load RX onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="10011" then --Rx OR Ry, load RX onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="10100" then --Rx NAND RY, load RX onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="10101" then --RX NOR RY, load RX onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="10110" then --Rx XOR Ry, load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="10111" then --Rx XNOR Ry, load Rx ont0  A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="11000" then --Greater than, load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="11001" then --less than, Load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="11010" then -- Equal to, Load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="11011" then -- Gary to Binary, Load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="11100" then -- Binary to Gray , Load Rx onto A
				SEL <= '1'& Rx;
				E_A <= '1';
			elsif f="11101" then -- Rx/Ry, load Rx onto C
				SEL <= '1'& Rx;
				E_C <= '1';
			elsif f="11110" then -- Rx mod Ry, load Rx onto C
				SEL <= '1'& Rx;
				E_C <= '1';
			else  
				SEL <= '1'& Rx; ---Reset RX load Rx onto A
				E_A <='1';
			end if;
		When S3 => --increment 
			SEL <= "001";
			Ex <= '1';
		When S4 => --decrement 
			SEL <= "001";
			Ex <= '1';					
		when S5a => --add 
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "00110";
		When S5b =>
			SEL <= "001";
			Ex <= '1';				
		when S6a => --subtract  
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "00111";
		When S6b =>
			SEL <= "001";
			Ex <= '1';		
		when S7a => --|subtract| 
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "01000";
		When S7b =>
			SEL <= "001";
			Ex <= '1';		
		when S8a => --multiply  
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "01001";
		When S8b =>
			SEL <= "001";
			Ex <= '1';			
		when S9a => --Left Shift   
			E_G <= '1';
			op <= "01010";		
		When S9b =>
			SEL <= "001";
			Ex <= '1';			
		when S10a => --Right Shift   
			E_G <= '1';
			op <= "01011";		
		When S10b =>
			SEL <= "001";
			Ex <= '1';			
		when S11a => --Not   
			E_G <= '1';
			op <= "10000";
		When S11b =>
			SEL <= "001";
			Ex <= '1';			
		when S12a => --AND  
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "10010";
		When S12b =>
			SEL <= "001";
			Ex <= '1';		
		when S13a => --OR 
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "10011";
		When S13b =>
			SEL <= "001";
			Ex <= '1';		
		when S14a => --NAND
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "10100";
		When S14b =>
			SEL <= "001";
			Ex <= '1';			
		when S15a => --NOR
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "10101";
		When S15b =>
			SEL <= "001";
			Ex <= '1';			
		when S16a => --XOR
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "10110";
		When S16b =>
			SEL <= "001";
			Ex <= '1';			
		when S17a => --XNOR
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "10111";
		When S17b =>
			SEL <= "001";
			Ex <= '1';			
		when S18a => --Greater than 
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "11000";
		When S18b =>
			SEL <= "001";
			Ex <= '1';			
		when S19a => --less than 
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "11001";
		When S19b =>
			SEL <= "001";
			Ex <= '1';			
		when S20a => --Equal to 
			SEL <= '1'& Ry;
			E_G <= '1';
			op <= "11010";
		When S20b =>
			SEL <= "001";
			Ex <= '1';			
		when S21a => --Gray to Binary 
			E_G <= '1';
			op <= "11011";
		When S21b =>
			SEL <= "001";
			Ex <= '1';			
		when S22a => --Binary to Gray 
			E_G <= '1';
			op <= "11100";
		When S22b =>
			SEL <= "001";
			Ex <= '1';			
		when S23a => --Reset
			E_G <= '1';
			op <= "11111";
		When S23b =>
			SEL <= "001";
			Ex <= '1';		
		when S25a => --Division  
			SEL <= '1'& Ry;
			E_DIV <= '1';
		When S25b =>
			SEL <= "010";
			Ex <= '1';		
		when S26a => --Mod  
			SEL <= '1'& Ry;
			E_DIV <= '1';
		When S26b =>
			SEL <= "011";
			Ex <= '1';				
		When S24 =>			
		When S27 =>
			done <= '1';
	end case;
end process;


end Behavioral;

