LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Arg_el IS
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_en : IN STD_LOGIC;
        I_P1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        I_P2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        I_I1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        I_I2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        O_I : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        O_P : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        O_done : OUT STD_LOGIC
    );
END Arg_el;

ARCHITECTURE Behavioral OF Arg_el IS

    COMPONENT RegWen IS
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

    SIGNAL max_P : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL max_I : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

    Reg_P : RegWen
    GENERIC MAP(
        size => 8
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => I_en,
        I_data => max_P,
        O_value => O_P
    );

    Reg_I : RegWen
    GENERIC MAP(
        size => 4
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_en => I_en,
        I_data => max_I,
        O_value => O_I
    );

    PROCESS (I_clk, I_P1, I_P2)

    BEGIN
        IF (signed(I_P1) > signed(I_P2)) THEN
            max_P <= I_P1;
            max_I <= I_I1;
        ELSE
            max_P <= I_P2;
            max_I <= I_I2;
        END IF;
    END PROCESS;

    PROCESS (I_clk, I_rst)

    BEGIN
        IF (I_rst = '0') THEN
            O_done <= '0';
        ELSE
            IF (rising_edge(I_clk)) THEN
                O_done <= I_en;
            END IF;
        END IF;

    END PROCESS;

END Behavioral;
