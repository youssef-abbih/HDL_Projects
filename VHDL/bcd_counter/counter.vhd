LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY counter IS
	PORT(
			clk_1hz, raz_n : IN STD_LOGIC;
			numbers : OUT INTEGER RANGE 0 TO 9
		);
END ENTITY;
ARCHITECTURE arch OF counter IS
	SIGNAL var_num : INTEGER RANGE 0 TO 9;
	BEGIN
	
		PROCESS(clk_1hz,raz_n)
			
			BEGIN
				IF raz_n='0'THEN
					var_num<=0;
				ELSIF RISING_EDGE(clk_1hz)THEN
					var_num<=var_num+1;
					IF (var_num=9)THEN
						var_num<=0;
					END IF;
				END IF;
			END PROCESS;
		numbers<=var_num;
	END arch;