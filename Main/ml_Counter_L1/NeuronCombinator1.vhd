LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY NeuronCombinator1 IS
    PORT (
        I_clk : IN STD_LOGIC;
        I_rst : IN STD_LOGIC;
        I_en : IN STD_LOGIC;
        I_data : IN STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
        I_ouputswitch : IN STD_LOGIC; -- tel if we return first or second half of ouput
        O_data : OUT STD_LOGIC_VECTOR((40 * 8)/(2 - 0) - 1 DOWNTO 0)
    );
END NeuronCombinator1;

ARCHITECTURE Behavioral OF NeuronCombinator1 IS
    CONSTANT nb_neurons : NATURAL := 40;
    CONSTANT size_w : NATURAL := 8;
    CONSTANT is_not_divided : NATURAL := 0;
    SIGNAL SR_reg : STD_LOGIC_VECTOR(nb_neurons * size_w - 1 DOWNTO 0);
BEGIN
    PROCESS (I_clk, I_rst, I_en)
    BEGIN
        IF (I_rst = '0') THEN
            SR_reg <= (OTHERS => '0');
        ELSIF (rising_edge(I_clk)) THEN
            IF (I_en = '1') THEN
                SR_reg <= SR_reg((nb_neurons - 1) * size_w - 1 DOWNTO 0) & I_data;
            END IF;
            IF (I_ouputswitch = '0' AND is_not_divided = 0) THEN
                O_data <= SR_reg(nb_neurons * size_w - 1 DOWNTO nb_neurons * size_w/2);
            ELSIF (is_not_divided = 0) THEN
                O_data <= SR_reg(nb_neurons * size_w/2 - 1 DOWNTO 0);
            ELSE
                O_data <= SR_reg;
            END IF;
        END IF;
    END PROCESS;
END Behavioral;