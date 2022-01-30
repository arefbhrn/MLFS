LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ShiftReg_0 IS
    GENERIC (
        nb_reg : NATURAL := 28;
        size_w : NATURAL := 8
    );
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_en : IN STD_LOGIC;
        I_data : IN STD_LOGIC_VECTOR(size_w - 1 DOWNTO 0);
        O_data : OUT STD_LOGIC_VECTOR(nb_reg * size_w - 1 DOWNTO 0)
    );
END ShiftReg_0;

ARCHITECTURE Behavioral OF ShiftReg_0 IS

    COMPONENT RegWEn
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

    TYPE Reg_S IS ARRAY(0 TO nb_reg - 1) OF STD_LOGIC_VECTOR(size_w - 1 DOWNTO 0);
    SIGNAL Reg_I : Reg_S;
    SIGNAL Reg_O : Reg_S;

    TYPE En_S IS ARRAY(0 TO nb_reg - 1) OF STD_LOGIC;
    SIGNAL En_signal : En_S;

BEGIN

    R1 : FOR index IN 0 TO nb_reg - 1 GENERATE
        reg_shifted : RegWEn
        GENERIC MAP(
            size => 8
        )
        PORT MAP(
            I_clk => I_clk,
            I_rst => I_rst,
            I_en => I_en,
            I_data => Reg_I(index),
            O_value => Reg_O(index)
        );
    END GENERATE R1;

    PROCESS (I_en, I_data, I_clk)

    BEGIN
        ShiftLoop : FOR indexShiftLoop IN 0 TO nb_reg - 2 LOOP
            --     En_signal(indexShiftLoop) <= '1';
            Reg_I(indexShiftLoop) <= Reg_O(indexShiftLoop + 1);
        END LOOP ShiftLoop;

        --En_signal(0)    <= I_en;
        Reg_I(nb_reg - 1) <= I_data;

        Out_loop : FOR index_o_loop IN 0 TO nb_reg - 1 LOOP
            O_data((nb_reg * size_w - 1 - index_o_loop * size_w) DOWNTO ((nb_reg - 1) * size_w - index_o_loop * size_w)) <= Reg_O(index_o_loop);
        END LOOP Out_loop;

    END PROCESS;

END Behavioral;
