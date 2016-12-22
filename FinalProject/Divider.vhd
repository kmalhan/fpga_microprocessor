
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Divider is
    Port ( clock,resetn,E : in  STD_LOGIC;
           A,B : in  STD_LOGIC_VECTOR (15 downto 0);           
           Q,R : out  STD_LOGIC_VECTOR (15 downto 0); 
			  done : out  STD_LOGIC);
end Divider;

architecture struct of Divider is

component Counter0to15
	Port ( clock : in  STD_LOGIC;
          E : in  STD_LOGIC;
          sclr : in  STD_LOGIC;
			 resetn : in  STD_LOGIC;
          Q : out  STD_LOGIC_VECTOR (2 downto 0);
          zC : out  STD_LOGIC); 
end component;

component DividerSubtractor 
	generic (N: INTEGER:= 17);
	port(	x,y: in std_logic_vector (N-1 downto 0);
		   s: out std_logic_vector (N-1 downto 0);
		   cout: out std_logic);
end component;

component DividerRegister 
	generic (N: INTEGER:= 16);
	port ( clock, resetn: in std_logic;
	       E: in std_logic; 
			 D: in std_logic_vector (N-1 downto 0);
	       Q: out std_logic_vector (N-1 downto 0));
end component;

component LeftShiftRegisterB 
	generic(N: integer:= 16);
	port (resetn, sclr, E, clock, w, s_L : in  std_logic;
	       D: in std_logic_vector (N-1 downto 0);
			 Q: out std_logic_vector (N-1 downto 0));
end component;

component LeftShiftRegisterA 
	generic(N: integer:= 16);
	port (resetn, E, clock, w, s_L : in  std_logic;
	       D: in std_logic_vector (N-1 downto 0);
			 Q: out std_logic_vector (N-1 downto 0));
end component;

component DividerFSM
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
end component;

signal cout: std_logic;
signal LAB: std_logic;
signal EA: std_logic;
signal EC: std_logic;
signal sclrC: std_logic;
signal sclrR: std_logic;
signal LR: std_logic;
signal ER: std_logic;
signal zC: std_logic;
signal ARegOut: std_logic_vector (15 downto 0);
signal BRegOut: std_logic_vector (15 downto 0);
signal sR: std_logic_vector (15 downto 0);
signal T: std_logic_vector (16 downto 0);
signal Asub: std_logic_vector (16 downto 0);
signal Bsub: std_logic_vector (16 downto 0); 

begin

Asub <= sR(15 downto 0) & ARegOut(15);
Bsub <= '0' & BRegOut(15 downto 0);

C0: Counter0to15 port map( clock => clock,
									E => EC,
									sclr => sclrC,
									resetn => resetn,
									Q => open,
								   zC => zC);
									
DS0: DividerSubtractor port map( x => Asub,
										   y => Bsub,										
										   s => T,        
										   cout => cout);
										
DR0: DividerRegister port map( clock => clock,  
									    resetn => resetn,
									    E => LAB, 
									    D => B,
									    Q => BRegOut);
									
LSRB0: LeftShiftRegisterB port map( resetn => resetn, 
											   sclr => sclrR,  
											   E => ER, 
											   clock => clock, 
											   w => ARegOut(15), 
											   s_L => LR, 
											   D => T(15 downto 0),
											   Q => sR);

LSRA0: LeftShiftRegisterA port map( resetn => resetn, 
											   E => EA, 
											   clock => clock, 
											   w => cout, 
											   s_L => LAB, 
											   D => A,
											   Q => ARegOut);
											 
FSM0: DividerFSM port map( clock => clock,
						         resetn => resetn,  
						         cout => cout, 
						         E => E,  
						         zC => zC,
						         LAB => LAB,
								   EA => EA,
								   EC => EC,
								   sclrC => sclrC,
								   sclrR => sclrR,
								   LR => LR,
								   ER => ER,
								   done => done);	

Q <= ARegOut;						  
R <= sR;
		
end struct;

