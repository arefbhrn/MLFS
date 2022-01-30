LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY CreateWord IS
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_pixel : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        I_en_load : IN STD_LOGIC;
        I_en_C_P : IN STD_LOGIC;
        I_en_C_W : IN STD_LOGIC;
        I_clean_P : IN STD_LOGIC;
        O_I_0 : OUT STD_LOGIC_VECTOR(223 DOWNTO 0);
        O_en_I_0 : OUT STD_LOGIC;
        O_pixelCount : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        O_W_0 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
END CreateWord;

ARCHITECTURE Behavioral OF CreateWord IS
    COMPONENT RegWEn IS
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
    END COMPONENT;

    COMPONENT ShiftReg_0 IS
        GENERIC (
            nb_reg : NATURAL;
            size_w : NATURAL
        );
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_en : IN STD_LOGIC;
            I_data : IN STD_LOGIC_VECTOR(size_w - 1 DOWNTO 0);
            O_data : OUT STD_LOGIC_VECTOR(nb_reg * size_w - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Counter IS
        GENERIC (
            val_max : NATURAL;
            nb_bits : NATURAL
        );
        PORT (
            I_clk : IN STD_LOGIC;
            I_en : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            O_value : OUT STD_LOGIC_VECTOR(nb_bits - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Counter_Clean IS
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
    END COMPONENT;

    -- signals 

    SIGNAL value_W_28 : unsigned(4 DOWNTO 0);
    SIGNAL value_P_28 : unsigned(4 DOWNTO 0);
    SIGNAL l_value_W_28 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL l_value_P_28 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL I_P_28 : STD_LOGIC;
    SIGNAL I_P_28_temp : STD_LOGIC_VECTOR(0 DOWNTO 0);
    SIGNAL out_Reg_Temp : STD_LOGIC_VECTOR(0 DOWNTO 0);
    SIGNAL out_data : STD_LOGIC_VECTOR(223 DOWNTO 0);

BEGIN

    Counter_W_28 : Counter
    GENERIC MAP(
        val_max => 28,
        nb_bits => 5
    )
    PORT MAP(
        I_clk => I_clk,
        I_en => I_en_C_W,
        I_rst => I_rst,
        O_value => l_value_W_28
    );

    Counter_C_P_28 : Counter_Clean
    GENERIC MAP(
        val_max => 28,
        nb_bits => 5
    )
    PORT MAP(
        I_clk => I_clk,
        I_en => I_P_28,
        I_rst => I_rst,
        I_clean => I_clean_P,
        O_value => l_value_P_28
    );

    Reg_I : ShiftReg_0
    GENERIC MAP(
        nb_reg => 28,
        size_w => 8
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => I_en_load,
        I_data => I_pixel,
        O_data => out_data
    );

    Reg_temp : RegWEn
    GENERIC MAP(
        size => 1
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => '1',
        I_data => I_P_28_temp,
        O_value => out_Reg_Temp
    );

    O_I_0 <= out_data;
    value_W_28 <= Unsigned(l_value_W_28);
    value_P_28 <= Unsigned(l_value_P_28);
    O_pixelCount <= STD_LOGIC_VECTOR(value_P_28);
    O_W_0 <= STD_LOGIC_VECTOR(value_W_28);
    I_P_28_temp(0) <= I_P_28;
    I_P_28 <= '1' WHEN (to_integer(value_W_28) = 28 AND out_Reg_Temp = "0") ELSE
        '0';
    O_en_I_0 <= '1' WHEN (to_integer(value_W_28) = 28) ELSE
        '0';

END Behavioral;
