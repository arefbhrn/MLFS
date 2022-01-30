LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Counter_L1 IS
    GENERIC (
        N_size : NATURAL := 5;
        W_size : NATURAL := 5
    );
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_N_1_en : IN STD_LOGIC;
        I_W_1_en : IN STD_LOGIC;
        I_N_clean : IN STD_LOGIC;
        I_W_clean : IN STD_LOGIC;
        O_N_1 : OUT STD_LOGIC_VECTOR(N_size - 1 DOWNTO 0);
        O_W_1 : OUT STD_LOGIC_VECTOR(W_size - 1 DOWNTO 0);
        O_W_N : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
    );
END Counter_L1;

ARCHITECTURE Behavioral OF Counter_L1 IS

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

    SIGNAL value_counter_40 : unsigned(5 DOWNTO 0);
    SIGNAL value_counter_28 : unsigned(4 DOWNTO 0);
    SIGNAL u_en : STD_LOGIC;
    SIGNAL l_value_counter_40 : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL l_value_counter_28 : STD_LOGIC_VECTOR(4 DOWNTO 0);

BEGIN

    Counter_40 : Counter_Clean
    GENERIC MAP(
        val_max => 39,
        nb_bits => 6
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => u_en,
        I_clean => I_N_clean,
        O_value => l_value_counter_40
    );

    Counter_28 : Counter_Clean
    GENERIC MAP(
        val_max => 28,
        nb_bits => 5
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => I_W_1_en,
        I_clean => I_W_clean,
        O_value => l_value_counter_28
    );

    O_N_1 <= STD_LOGIC_VECTOR(value_counter_40);
    O_W_1 <= STD_LOGIC_VECTOR(value_counter_28);
    O_W_N <= STD_LOGIC_VECTOR(resize(to_unsigned(to_integer(value_counter_28) + (to_integer(value_counter_40) * 28), 11), 11));

    u_en <= I_N_1_en WHEN(to_integer(value_counter_28) = 28) ELSE
        '0';
    value_counter_40 <= unsigned(l_value_counter_40);
    value_counter_28 <= unsigned(l_value_counter_28);

END Behavioral;
