LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Counter_L3 IS
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_N_3_en : IN STD_LOGIC;
        I_clean_N : IN STD_LOGIC;
        O_N_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END Counter_L3;

ARCHITECTURE Behavioral OF Counter_L3 IS

    COMPONENT Counter_Clean IS
        GENERIC (
            val_max : NATURAL;
            nb_bits : NATURAL
        );
        PORT (
            I_clk : IN STD_LOGIC;
            I_en : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_clean : IN STD_LOGIC;
            O_value : OUT STD_LOGIC_VECTOR(nb_bits - 1 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL value_counter_10 : unsigned(3 DOWNTO 0);
    SIGNAL l_value_counter_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
    Counter_10 : Counter_Clean
    GENERIC MAP(
        val_max => 12,
        nb_bits => 4
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => I_N_3_en,
        I_clean => I_clean_N,
        O_value => l_value_counter_10
    );

    O_N_3 <= STD_LOGIC_VECTOR(value_counter_10);
    value_counter_10 <= unsigned(l_value_counter_10);

END Behavioral;
