LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY FSM IS
    PORT (
        i_clk : IN STD_LOGIC;
        i_rst : IN STD_LOGIC;
        i_ack : IN STD_LOGIC;
        i_w_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        i_p_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        i_n_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        i_w_1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        i_n_2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        i_w_2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        i_n_3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        i_arg : IN STD_LOGIC;
        o_request : OUT STD_LOGIC;
        o_en_load : OUT STD_LOGIC;
        o_en_c_w : OUT STD_LOGIC;
        o_en_c_p : OUT STD_LOGIC;
        o_clean_P : OUT STD_LOGIC;
        o_w_1_en : OUT STD_LOGIC;
        o_n_1_en : OUT STD_LOGIC;
        o_clean_n_1 : OUT STD_LOGIC;
        o_clean_w_1 : OUT STD_LOGIC;
        o_w_2_en : OUT STD_LOGIC;
        o_n_2_en : OUT STD_LOGIC;
        o_clean_n_2 : OUT STD_LOGIC;
        o_clean_w_2 : OUT STD_LOGIC;
        o_n_3_en : OUT STD_LOGIC;
        o_clean_n_3 : OUT STD_LOGIC;
        o_classifvalid : OUT STD_LOGIC;
        o_arg : OUT STD_LOGIC
    );
END FSM;

ARCHITECTURE Behavioral OF FSM IS

    TYPE T_State IS (ST_Reset, ST_Wait, ST_Load, ST_WriteRam, ST_L1, ST_temp_1, ST_L2, ST_temp_2, ST_L3, ST_Class, ST_Out);
    SIGNAL SC_Futur : T_State;
    SIGNAL SR_Present : T_State;
BEGIN

    PROCESS (I_clk, I_rst)
    BEGIN
        IF (I_rst = '0') THEN
            SR_Present <= ST_Reset;
        ELSIF (rising_edge(I_clk)) THEN
            SR_Present <= SC_Futur;
        END IF;
    END PROCESS;

    PROCESS (I_ack,
        I_W_0,
        I_P_0,
        I_N_1,
        I_W_1,
        I_N_2,
        I_W_2,
        I_N_3,
        I_arg,
        SR_Present)

    BEGIN
        CASE SR_Present IS
            WHEN ST_Reset =>
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_arg <= '0';
                O_clean_P <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                SC_Futur <= ST_Wait;

            WHEN ST_Wait =>
                O_request <= '1';
                O_en_load <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_arg <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_clean_P <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                IF I_ack = '1' THEN
                    SC_Futur <= ST_Load;
                ELSE
                    SC_Futur <= ST_Wait;
                END IF;

            WHEN ST_Load =>
                O_en_load <= '1';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_arg <= '0';
                O_en_C_W <= '1';
                O_en_C_P <= '1';
                O_request <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_clean_P <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                IF (to_integer(Unsigned(I_W_0)) = 27) THEN
                    SC_Futur <= ST_WriteRam;
                ELSE
                    SC_Futur <= ST_Wait;
                END IF;

            WHEN ST_WriteRam =>
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_arg <= '0';
                O_en_C_W <= '1';
                O_en_C_P <= '1';
                O_request <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_clean_P <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                IF (to_integer(Unsigned(I_P_0))) = 27 THEN
                    SC_Futur <= ST_L1;
                ELSE
                    SC_Futur <= ST_Wait;
                END IF;

            WHEN ST_L1 =>
                O_request <= '0';
                O_W_1_en <= '1';
                O_N_1_en <= '1';
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_arg <= '0';
                O_clean_P <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                IF (to_integer(Unsigned(I_W_1)) = 28 AND
                    to_integer(Unsigned(I_N_1)) = 39) THEN
                    SC_Futur <= ST_temp_1;
                ELSE
                    SC_Futur <= ST_L1;
                END IF;
            WHEN ST_temp_1 =>
                O_request <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_arg <= '0';
                O_clean_P <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                SC_FUTUR <= ST_L2;

            WHEN ST_L2 =>
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_arg <= '0';
                O_clean_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '1';
                O_N_2_en <= '1';
                O_clean_n_1 <= '1';
                O_clean_w_1 <= '1';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                IF (to_integer(Unsigned(I_W_2)) = 2 AND
                    to_integer(Unsigned(I_N_2)) = 19) THEN
                    SC_Futur <= ST_temp_2;
                ELSE
                    SC_Futur <= ST_L2;
                END IF;

            WHEN ST_temp_2 =>
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_classifValid <= '0';
                SC_Futur <= ST_Wait;
                O_clean_P <= '0';
                O_N_3_en <= '0';
                O_arg <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                SC_futur <= ST_L3;

            WHEN ST_L3 =>
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_classifValid <= '0';
                SC_Futur <= ST_Wait;
                O_clean_P <= '1';
                O_N_3_en <= '1';
                O_arg <= '0';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '1';
                O_clean_n_2 <= '1';
                o_clean_n_3 <= '0';
                IF (to_integer(unsigned(I_N_3)) = 10) THEN
                    SC_Futur <= ST_Class;
                ELSE
                    SC_Futur <= ST_L3;
                END IF;

            WHEN ST_Class =>
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_N_3_en <= '0';
                O_classifValid <= '0';
                O_clean_P <= '0';
                O_arg <= '1';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '1';
                IF (I_arg = '0') THEN
                    SC_Futur <= ST_Class;
                ELSE
                    SC_Futur <= ST_Out;
                END IF;

            WHEN ST_Out =>
                O_request <= '0';
                O_en_load <= '0';
                O_en_C_W <= '0';
                O_en_C_P <= '0';
                O_W_1_en <= '0';
                O_N_1_en <= '0';
                O_W_2_en <= '0';
                O_N_2_en <= '0';
                O_N_3_en <= '0';
                O_arg <= '0';
                O_classifValid <= '1';
                O_clean_n_1 <= '0';
                O_clean_w_1 <= '0';
                O_clean_w_2 <= '0';
                O_clean_n_2 <= '0';
                o_clean_n_3 <= '0';
                SC_Futur <= ST_Wait;
                O_clean_P <= '0';

            WHEN OTHERS => SC_Futur <= ST_Reset;
        END CASE;
    END PROCESS;

END Behavioral;
