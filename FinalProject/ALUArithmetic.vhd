
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUArithmetic is
	generic (N: INTEGER:= 16);
	port ( resetn,s_l: in std_logic;
			 A,B: in std_logic_vector (N-1 downto 0);
	       sel: in std_logic_vector (3 downto 0);
	       y: out std_logic_vector (N-1 downto 0));
end ALUArithmetic;

architecture structure of ALUArithmetic is

	component AddSub
		generic (N: INTEGER:= 16);
		port(	addsub: in std_logic;
				x,y: in std_logic_vector (N-1 downto 0);
				s: out std_logic_vector (N-1 downto 0);
				overflow: out std_logic;
				cout: out std_logic);
	end component;
	
	component AbsSubtractor
		generic (N: INTEGER:= 16);
		port ( x,y: in std_logic_vector (N-1 downto 0);
	          z: out std_logic_vector (N-1 downto 0));
	end component;
	
	component Multiplier
		generic (N: INTEGER:= 8);
		port ( A,B: in std_logic_vector (N-1 downto 0);
				 P: out std_logic_vector (2*N-1 downto 0));
	end component;
	
	component LeftShiftRegister
		Port ( reset,din,s_l : in STD_LOGIC;
			    D : in STD_LOGIC_VECTOR (15 downto 0);
             Q : out STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	component RightShiftRegister
		Port ( reset,din,s_l : in STD_LOGIC;
			    D : in STD_LOGIC_VECTOR (15 downto 0);
             Q : out STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	signal Ap1, Am1, Am1i, Bp1, Bm1, Bm1i, ApB, AmB, AmBi, AbsAmB, LeftA, RightA, AmultB: std_logic_vector (N-1 downto 0);
   signal One: std_logic_vector (N-1 downto 0);
	
begin

-- One = 1
One(N-1 downto 1) <= (others => '0'); 
One(0) <= '1'; 

-- A + 1
F0: AddSub generic map (N => N)
    port map (addsub => '0', x => A, y => One , s => Ap1);

-- A - 1
F1: AddSub generic map (N => N)
				 port map (addsub => '1', x => A, y => One , s => Am1i);
DecrementA : process (A,Am1i)
	begin
		if (A >= "0000000000000001") then 
			Am1 <= Am1i;
		else 
			Am1 <= "0000000000000000";
		end if;
end process DecrementA;

-- B + 1
F2: AddSub generic map (N => N)
    port map (addsub => '0', x => B, y => One , s => Bp1);

-- B - 1
F3: AddSub generic map (N => N)
				 port map (addsub => '1', x => B, y => One , s => Bm1i);
DecrementB : process (B,Bm1i)	
	begin	
		if (B >= "0000000000000001") then 
			Bm1 <= Bm1i;
		else 
			Bm1 <= "0000000000000000";
		end if;
end process DecrementB;

-- A + B
F4: AddSub generic map (N => N)
    port map (addsub => '0', x => A, y => B , s => ApB);

-- A - B
F5: AddSub generic map (N => N)
				 port map (addsub => '1', x => A, y => B , s => AmBi);	
Subtractor : process (A,B,AmBi)
	begin		
		if (A >= B) then 
			AmB <= AmBi;
		else 
			AmB <= "0000000000000000";
		end if;
end process Subtractor;

--abs(A-B)
F6: AbsSubtractor generic map (N => N)
	 port map (x => A, y => B, z => AbsAmB); 

--A*B
F7: Multiplier generic map (N => 8)
	 port map (A => A(7 downto 0), B => B(7 downto 0), P => AmultB);

--A<<	 
F8: LeftShiftRegister port map (reset => resetn, din => '0', s_l => s_l, D => A, Q => LeftA);

--A>>
F9: RightShiftRegister port map (reset => resetn, din => '0', s_l => s_l, D => A, Q => RightA);
	 
-- Multiplexor	 
	 with sel select
			y <= A        when "0000",
			     Ap1      when "0001",
				  Am1      when "0010",
				  B        when "0011",
				  Bp1      when "0100",
				  Bm1      when "0101",
				  ApB      when "0110",
				  AmB      when "0111",
				  AbsAmB   when "1000",
			     AmultB   when "1001",
				  LeftA    when "1010",
				  RightA   when "1011",
				  (others => '0') when others;

end structure;

