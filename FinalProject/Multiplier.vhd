
-- ECE 378 - Final Project
-- 16-bit Microprocessor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplier is
   generic (N: INTEGER:= 8);
	port (A,B: in std_logic_vector (N-1 downto 0);
	      P: out std_logic_vector (2*N-1 downto 0));
end Multiplier;

architecture structure of Multiplier is

	component FullAdder
		port( cin, x, y : in std_logic;
				s, cout   : out std_logic);
	end component;

	type my_array is array (natural range <>, natural range <>) of std_logic;
	signal m: my_array(N downto 0, N-1 downto 0);
	signal s: my_array(N-1 downto 0, N-1 downto 0);
	signal c: my_array(N-1 downto 0, N-2 downto 0);
	
begin

-- Array of N * (N-1) full adders:	
	gi: for i in 0 to N-1 generate -- along rows
	      gj: for j in 0 to N-1 generate -- along columns
					   m(i,j) <= A(i) and B(j);
			         fa: if i /= N-1 and j /= N-1 generate
								 fij: FullAdder port map (cin => c(i,j), x => s(i,j+1) , y => m(i+1,j), s => s(i+1,j),  cout => c(i+1,j));
							 end generate;
                  fb: if i = 0 generate
								 s(i,j) <= m(i,j);					
                     end generate;
				 end generate;			
		 end generate;
	
	m(N,0) <= '0';
	glj: for j in 0 to N-2 generate
			  c(0,j) <= '0';
			  s(j+1,N-1) <= m(j+1,N-1); -- Column 3 (from rows 1 to N-1)
			  P(j+1) <= s(j+1,0);
	        flj: FullAdder port map  (cin => c(N-1,j), x => s(N-1,j+1), y => m(N,j), s => p(N+j) , cout => m(N,j+1));
		  end generate;		  
		  
   P(0) <= m(0,0);
	P(2*N-1) <= m(N,N-1);

end structure;



