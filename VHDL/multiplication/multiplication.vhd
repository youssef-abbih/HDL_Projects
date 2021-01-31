----------------------------------------------------------
LIBRARY IEEE;
USE IEEE.NUMERIC_STD.ALL;
----------------------------------------------------------

ENTITY multiplication IS
PORT(
	a,b : IN UNSIGNED( 3 DOWNTO 0);
	x   : OUT UNSIGNED (7 DOWNTO 0);
	c,d : IN SIGNED( 3 DOWNTO 0);
	y   : OUT SIGNED (7 DOWNTO 0)
);
END multiplication;
-----------------------------------------------------------

ARCHITECTURE arch OF multiplication IS
BEGIN
x<=a*b;
y<=c*d;
END arch;