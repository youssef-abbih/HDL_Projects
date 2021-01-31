LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY freq_divider IS
	PORT(
			clk, raz_n : IN STD_LOGIC;
			clk_1hz : OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE arch OF freq_divider IS
	SIGNAL sig_clk_1hz : STD_LOGIC;
	SIGNAL count : INTEGER RANGE 0 TO 2500_0000;
	BEGIN
		PROCESS(clk, raz_n)
			BEGIN
				IF (raz_n='0')THEN
					count <=0;
					sig_clk_1hz<='0';
				ELSIF RISING_EDGE(clk)THEN
					count <=count+1;
					IF(count=2500_0000)THEN
						sig_clk_1hz<= NOT sig_clk_1hz;
						count<=0;
					END IF;
				END IF;
		END PROCESS;
		clk_1hz<=sig_clk_1hz;
	END arch;