LIBRARY IEEE;
USE IEEE.NUMERIC_STD.ALL;
----------------------------------------------------------
ENTITY addition IS
PORT(
	a,b : IN INTEGER RANGE 0 TO 4;
	x   : OUT INTEGER RANGE 0 TO 8
);
END addition;
-----------------------------------------------------------
ARCHITECTURE arch OF addition IS
BEGIN
x<=a+b;
END arch;