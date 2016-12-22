
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MicroTopLevel is
	port ( resetn,clock,w: in std_logic;
	       IR: in std_logic_vector (8 downto 0); 
			 Input: in std_logic_vector (6 downto 0);
			 Output: out std_logic_vector (15 downto 0);
			 done: out std_logic);		 
end MicroTopLevel;

architecture Behavioral of MicroTopLevel is

	component BitRegister
		generic (N: INTEGER:= 16);
			port ( clock,resetn: in std_logic;
					 E: in std_logic; 
					 D: in std_logic_vector (N-1 downto 0);
					 Q: out std_logic_vector (N-1 downto 0));
	end component;
	
	component Mux8to1
		 generic (N: INTEGER:= 16); 
			port ( a,b,c,d,e,f,g,h: in std_logic_vector (N-1 downto 0);
					 s: in std_logic_vector (2 downto 0);
					 MuxOut: out std_logic_vector (N-1 downto 0)); 
	end component;
	
	component ALU
		generic (N: INTEGER:= 16);
			port ( s_l,resetn: std_logic;
					 A,B: in std_logic_vector (N-1 downto 0);
					 sel: in std_logic_vector (4 downto 0);
			       y: out std_logic_vector (N-1 downto 0));	
	end component;
	
	component Divider
		Port ( clock,resetn,E : in  STD_LOGIC;
             A,B : in  STD_LOGIC_VECTOR (15 downto 0);           
             Q,R : out  STD_LOGIC_VECTOR (15 downto 0); 
			    done : out  STD_LOGIC);
	end component;
	
	component Control
		port( w,clocky,resetny,z: in std_logic;
			   IR: in std_logic_vector(8 downto 0);
			   SEL: out std_logic_vector(2 downto 0);
			   E_A,E_G,E_IN,E_OUT,done,E_R0,E_R1,E_R2,E_R3,s_L,E_DIV,E_C: out std_logic;
			   op: out std_logic_vector (4 downto 0));
	end component;
	
	signal sInput: std_logic_vector (15 downto 0);
	
	signal s_l: std_logic;
	signal DIVdone: std_logic;
	signal SM: std_logic_vector (2 downto 0);
	signal op: std_logic_vector (4 downto 0);
	signal sBus: std_logic_vector (15 downto 0);
	signal sA0: std_logic_vector (15 downto 0);
	signal sA1: std_logic_vector (15 downto 0);
	signal ALUout: std_logic_vector (15 downto 0);
	
	signal E_IN: std_logic;
	signal E_R0: std_logic;
	signal E_R1: std_logic;
	signal E_R2: std_logic;
	signal E_R3: std_logic;
	signal E_A0: std_logic;
	signal E_A1: std_logic;
	signal E_D: std_logic;
	signal E_G: std_logic;
	signal E_OUT: std_logic;
	
	signal Mux000: std_logic_vector (15 downto 0);
	signal Mux001: std_logic_vector (15 downto 0);
	signal Mux010: std_logic_vector (15 downto 0);
	signal Mux011: std_logic_vector (15 downto 0);
	signal Mux100: std_logic_vector (15 downto 0);
	signal Mux101: std_logic_vector (15 downto 0);
	signal Mux110: std_logic_vector (15 downto 0);
	signal Mux111: std_logic_vector (15 downto 0);
		
begin

	sInput <= "000000000" & Input; 

	CCT: Control port map ( clocky => clock,				
									resetny => resetn,
									IR => IR,
								   w => w,
								   SEL => SM,
								   E_R0 => E_R0,
									E_R1 => E_R1,
									E_R2 => E_R2,
									E_R3 => E_R3,
									E_A => E_A0,
									E_DIV => E_D,
									E_C => E_A1,
									E_G => E_G,
									op => op,
									E_IN => E_IN,
									E_OUT => E_OUT,
									z => DIVdone,
									s_L => s_l,
									done => done);
							  
	IN0: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_IN,
							  D => sInput,
							  Q => Mux000);
							  
	MUX: Mux8to1 generic map (N => 16)
				port map ( a => Mux000,	
							  b => Mux001,
							  c => Mux010,
							  d => Mux011,
							  e => Mux100,	
							  f => Mux101,
							  g => Mux110,
							  h => Mux111,
							  s => SM,
							  MuxOut => sBus);
							  
	R0: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_R0,
							  D => sBUS,
							  Q => Mux100);
							  
   R1: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_R1,
							  D => sBUS,
							  Q => Mux101);
							  
	R2: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_R2,
							  D => sBUS,
							  Q => Mux110);
							  
   R3: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_R3,
							  D => sBUS,
							  Q => Mux111);
							  
	A0: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_A0,
							  D => sBus,
							  Q => sA0);
							  
	ALU0: ALU generic map (N => 16)
				 port map ( resetn => resetn,							   						
							   s_l => s_l,		
							   A => sA0,	
							   B => sBus,
							   sel => op,
							   y => ALUout);
							  
	G0: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_G,
							  D => ALUout,
							  Q => Mux001);
	
	A1: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_A1,
							  D => sBus,
							  Q => sA1);
							  
	DO: Divider port map ( clock => clock,	
							     resetn => resetn,
							     E => E_D,
							     A => sA1,
							     B => sBus,
								  Q => Mux010,
								  R => Mux011,
								  done => DIVdone);
							  
	OUT0: BitRegister generic map (N => 16)
				port map ( clock => clock,	
							  resetn => resetn,
							  E => E_OUT,
							  D => sBUS,
							  Q => Output);									  
	
end Behavioral;



