LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Counter_Clean IS
    GENERIC (
        val_max : NATURAL := 10;
        nb_bits : NATURAL := 4
    );
    PORT (
        I_clk : IN STD_LOGIC;
        I_en : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_clean : IN STD_LOGIC;
        O_value : OUT STD_LOGIC_VECTOR(nb_bits - 1 DOWNTO 0)
    );
END Counter_Clean;

ARCHITECTURE Behavioral OF Counter_Clean IS

    SIGNAL temp_value : unsigned(nb_bits - 1 DOWNTO 0);

BEGIN

    PROCESS (I_clk, I_rst)

    BEGIN
        IF I_rst = '0' THEN
            temp_value <= (OTHERS => '0');
        ELSE
            IF (rising_edge(I_clk)) THEN
                IF (I_clean = '1') THEN
                    temp_value <= (OTHERS => '0');
                ELSE
                    IF I_en = '1' THEN
                        IF temp_value >= val_max THEN
                            temp_value <= (OTHERS => '0');
                        ELSE
                            temp_value <= temp_value + 1;
                        END IF;
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    O_value <= STD_LOGIC_VECTOR(temp_value);
END Behavioral;
