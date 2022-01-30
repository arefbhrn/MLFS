LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY SubNeurone_l3 IS
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_data : IN STD_LOGIC_VECTOR(20 * 8 - 1 DOWNTO 0);
        I_W : IN STD_LOGIC_VECTOR(20 * 5 - 1 DOWNTO 0);
        I_biais : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        O_d : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END SubNeurone_l3;
ARCHITECTURE Behavioral OF SubNeurone_l3 IS

    COMPONENT Acc IS
        GENERIC (
            size : NATURAL
        );
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_load : IN STD_LOGIC;
            I_d : IN STD_LOGIC_VECTOR(size - 1 DOWNTO 0);
            O_d : OUT STD_LOGIC_VECTOR(size - 1 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL out_acc : signed(16 DOWNTO 0);
    SIGNAL l_out_acc : STD_LOGIC_VECTOR(16 DOWNTO 0);
    TYPE MULT_X IS ARRAY(0 TO 19) OF signed(13 DOWNTO 0);
    SIGNAL mult : MULT_X;

    TYPE ADDS_1 IS ARRAY(0 TO 9) OF signed(14 DOWNTO 0);
    TYPE ADDS_2 IS ARRAY(0 TO 4) OF signed(15 DOWNTO 0);
    TYPE ADDS_3 IS ARRAY(0 TO 2) OF signed(16 DOWNTO 0);
    TYPE ADDS_4 IS ARRAY(0 TO 1) OF signed(16 DOWNTO 0);

    SIGNAL add_1 : ADDS_1;
    SIGNAL add_2 : ADDS_2;
    SIGNAL add_3 : ADDS_3;
    SIGNAL add_4 : ADDS_4;
    SIGNAL add_5 : signed(16 DOWNTO 0);
    SIGNAL l_add_5 : STD_LOGIC_VECTOR(16 DOWNTO 0);

    SIGNAL en_Acc : STD_LOGIC;

    SIGNAL add_b : signed(16 DOWNTO 0);

BEGIN

    Acc_1 : Acc
    GENERIC MAP(
        size => 17
    )
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_rst,
        I_load => '1',
        I_d => l_add_5,
        O_d => l_out_acc
    );

    PROCESS (I_W, I_data)
    BEGIN
        -- multiplicateur
        mult_loop : FOR Index_m IN 0 TO 19 LOOP
            mult(Index_m) <= signed('0' & I_data(159 - Index_m * 8 DOWNTO 152 - Index_m * 8)) * signed(I_W(99 - Index_m * 5 DOWNTO 95 - Index_m * 5));
        END LOOP mult_loop;
    END PROCESS;

    PROCESS (mult)
    BEGIN
        -- additionneurs premier etage
        add_1_loop : FOR Index_a1 IN 0 TO 9 LOOP
            add_1(Index_a1) <= resize(mult(Index_a1 * 2), 15) + resize(mult(Index_a1 * 2 + 1), 15);
        END LOOP add_1_loop;
    END PROCESS;

    PROCESS (add_1)
    BEGIN
        -- additionneur 2eme etage
        add_2_loop : FOR Index_a2 IN 0 TO 4 LOOP
            add_2(Index_a2) <= resize(add_1(Index_a2 * 2), 16) + resize(add_1(Index_a2 * 2 + 1), 16);
        END LOOP add_2_loop;
    END PROCESS;

    PROCESS (add_2)
    BEGIN
        --additionneur 3eme etage
        add_3(0) <= resize(add_2(0), 17) + resize(add_2(1), 17);
        add_3(1) <= resize(add_2(2), 17) + resize(add_2(3), 17);
        add_3(2) <= resize(add_2(4), 17);
    END PROCESS;

    PROCESS (add_3)
    BEGIN
        -- addtionneur 4eme etage 
        add_4(0) <= resize(add_3(0), 17) + resize(add_3(1), 17);
        add_4(1) <= resize(add_3(2), 17);
    END PROCESS;

    PROCESS (add_4)
    BEGIN
        add_5 <= add_4(0) + add_4(1);
    END PROCESS;

    -- biais 
    PROCESS (I_biais, out_acc)
    BEGIN
        add_b <= out_acc + resize(signed(I_biais), 17);
    END PROCESS;
    -- resize 

    PROCESS (add_b)
    BEGIN
        O_d <= STD_LOGIC_VECTOR(add_b(16) & add_b(13 DOWNTO 7));
    END PROCESS;

    PROCESS (l_out_acc)
    BEGIN
        out_acc <= signed(l_out_acc);
    END PROCESS;
    -- Out with Relu

    PROCESS (add_5)
    BEGIN
        l_add_5 <= STD_LOGIC_VECTOR(add_5);
    END PROCESS;

END Behavioral;
