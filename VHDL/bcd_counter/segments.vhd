LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY segments IS
	PORT(
			numbers : IN INTEGER RANGE 0 TO 9;
			segment : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END ENTITY;
ARCHITECTURE arch OF segments IS
	BEGIN
	PROCESS (numbers)
		BEGIN
		CASE numbers IS
         	WHEN 0 =>segment<="1000000";
         	WHEN 1 =>segment<="1111001";
         	WHEN 2 =>segment<="0100100";
         	WHEN 3 =>segment<="0110000";
         	WHEN 4 =>segment<="0011001";
         	WHEN 5 =>segment<="0010010";
         	WHEN 6 =>segment<="0000010";
         	WHEN 7 =>segment<="1111000";
         	WHEN 8 =>segment<="0000000";
         	WHEN 9 =>segment<="0010000";
         	WHEN OTHERS => segment<="0000110";
     	END CASE;
    END PROCESS;
END arch;