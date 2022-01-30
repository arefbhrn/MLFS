LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Acc IS
    GENERIC (
        size : NATURAL := 17
    );
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_load : IN STD_LOGIC;
        I_d : IN STD_LOGIC_VECTOR(size - 1 DOWNTO 0);
        O_d : OUT STD_LOGIC_VECTOR(size - 1 DOWNTO 0)
    );
END Acc;

ARCHITECTURE Behavioral OF Acc IS

    SIGNAL tmp_value : unsigned(size - 1 DOWNTO 0);

BEGIN

    PROCESS (I_clk, I_rst)

    BEGIN
        IF I_rst = '0' THEN
            tmp_value <= (OTHERS => '0');
        ELSE
            IF (rising_edge(I_clk)) THEN
                IF I_load = '0' THEN
                    tmp_value <= tmp_value + unsigned(I_d);
                ELSE
                    tmp_value <= unsigned(I_d);
                END IF;
            END IF;
        END IF;

    END PROCESS;

    O_d <= STD_LOGIC_VECTOR(tmp_value);

END Behavioral;
