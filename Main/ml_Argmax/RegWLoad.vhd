LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RegWEn IS
    GENERIC (
        size : NATURAL
    );
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_en : IN STD_LOGIC;
        I_data : IN STD_LOGIC_VECTOR(size - 1 DOWNTO 0);
        O_value : OUT STD_LOGIC_VECTOR(size - 1 DOWNTO 0)
    );
END RegWEn;

ARCHITECTURE Behavioral OF RegWEn IS

BEGIN

    PROCESS (I_clk, I_rst)

    BEGIN

        IF I_rst = '0' THEN
            O_value <= (OTHERS => '0');
        ELSE
            IF rising_edge(I_clk) THEN
                IF I_en = '1' THEN
                    O_value <= I_data;
                END IF;
            END IF;
        END IF;
    END PROCESS;

END Behavioral;
