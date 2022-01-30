LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Counter_L2 IS
    GENERIC (
        N_size : NATURAL := 5;
        W_size : NATURAL := 5
    );
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_N_2_en : IN STD_LOGIC;
        I_W_2_en : IN STD_LOGIC;
        I_clean_W : IN STD_LOGIC;
        I_clean_N : IN STD_LOGIC;
        O_N_2 : OUT STD_LOGIC_VECTOR(N_size - 1 DOWNTO 0);
        O_W_2 : OUT STD_LOGIC_VECTOR(W_size - 1 DOWNTO 0);
        O_W_N : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
    );
END Counter_L2;

ARCHITECTURE Behavioral OF Counter_L2 IS

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

    SIGNAL value_counter_20 : unsigned(4 DOWNTO 0);
    SIGNAL value_counter_2 : unsigned(1 DOWNTO 0);

    SIGNAL l_value_counter_20 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL l_value_counter_2 : STD_LOGIC_VECTOR(1 DOWNTO 0);

    SIGNAL I_en_20 : STD_LOGIC;

BEGIN

    Counter_20 : Counter_Clean
    GENERIC MAP(
        val_max => 19,
        nb_bits => 5
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => I_en_20,
        I_clean => I_clean_N,
        O_value => l_value_counter_20
    );

    Counter_2 : Counter_Clean
    GENERIC MAP(
        val_max => 2,
        nb_bits => 2
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => I_W_2_en,
        I_clean => I_clean_W,
        O_value => l_value_counter_2
    );

    O_N_2 <= STD_LOGIC_VECTOR(l_value_counter_20);
    O_W_2 <= STD_LOGIC_VECTOR(l_value_counter_2);
    O_W_N <= STD_LOGIC_VECTOR(resize(to_unsigned(to_integer(value_counter_20) * 2 + (to_integer(value_counter_2)), 6), 6));

    value_counter_20 <= unsigned(l_value_counter_20);
    value_counter_2 <= unsigned(l_value_counter_2);
    I_en_20 <= I_N_2_en WHEN(to_integer(value_counter_2) = 2) ELSE
        '0';

END Behavioral;
