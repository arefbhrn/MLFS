LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE work.utils_pkg.ALL;

ENTITY Ram_W_3 IS
    GENERIC (
        size_w : NATURAL := 100;
        addr_size : NATURAL := 4
    );
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        addr_r : IN STD_LOGIC_VECTOR(addr_size - 1 DOWNTO 0);
        data_r : OUT STD_LOGIC_VECTOR(size_w - 1 DOWNTO 0)
    );
END Ram_W_3;

ARCHITECTURE Behavioral OF Ram_W_3 IS

    COMPONENT generic_LUT_unit
        GENERIC (
            G_FILEPATH : STRING;
            G_DEPTH_LUT : NATURAL;
            G_NBIT_LUT : NATURAL
        );
        PORT (
            I_clk : IN STD_LOGIC;
            I_sel_sample : IN STD_LOGIC_VECTOR(log2(G_DEPTH_LUT) - 1 DOWNTO 0);
            O_LUT_value : OUT STD_LOGIC_VECTOR(G_NBIT_LUT - 1 DOWNTO 0)
        );
    END COMPONENT;

    TYPE O_L_all IS ARRAY(0 TO 19) OF STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL O_L_1 : O_L_all;

BEGIN

    L1 : FOR index IN 0 TO 19 GENERATE
        lut : generic_LUT_unit
        GENERIC MAP(
            G_FILEPATH => "weights/l3_" & INTEGER'image(index) & ".lut",
            G_DEPTH_LUT => 10,
            G_NBIT_LUT => 5
        )
        PORT MAP(
            I_clk => I_clk,
            I_sel_sample => addr_r,
            O_LUT_value => O_L_1(index)
        );

    END GENERATE L1;

    PROCESS (addr_r)
    BEGIN
        word_loop : FOR indexW IN 0 TO 19 LOOP
            data_r((size_w - 1 - indexW * 5) DOWNTO (size_w - 5 - indexW * 5)) <= O_L_1(indexW);
        END LOOP word_loop;
    END PROCESS;
END Behavioral;
