LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY bcd_counter IS
	PORT(
		-- entree
		Clk 		: IN STD_LOGIC;
		raz_n		: IN STD_LOGIC;
		-- sortie
		segment: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END bcd_counter;
	
ARCHITECTURE arch OF bcd_counter IS
  SIGNAL tmp : STD_LOGIC := '0';
  SIGNAL temp: INTEGER RANGE 0 TO 9;	
COMPONENT freq_divider IS
    PORT (Clk,raz_n : IN  STD_LOGIC;
          clk_1hz : OUT  STD_LOGIC);
END COMPONENT;
COMPONENT counter IS
   PORT(clk_1hz, raz_n: in STD_LOGIC;
 	 	numbers: OUT INTEGER RANGE 0 TO 9);
END COMPONENT;
COMPONENT segments IS
   PORT (numbers : IN INTEGER RANGE 0 TO 9;
		 segment : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
         );
END COMPONENT;
BEGIN
	divISeur : freq_divider
	PORT MAP(Clk => Clk, raz_n => raz_n, clk_1hz => tmp);
	count : counter
	PORT MAP(Clk_1hz => tmp, raz_n =>raz_n, numbers => temp );
	sev_seg : segments
	PORT MAP(numbers => temp, segment => segment );
END arch;