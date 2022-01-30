LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.utils_pkg.ALL;

-- Top level of the Fully Connected Neural Network (FCNN) unit.
ENTITY FCNN_top_unit IS
    GENERIC (
        G_NBITS_PIXEL : NATURAL := 8; -- Number of bits for the input pixels.
        G_NUMBER_CLASSES : NATURAL := 10 -- Number of classes (= Depth of the output layer)
    );
    PORT (

        -------------------------- CLOCK AND RESET -------------------------
        I_clk : IN STD_LOGIC; -- System clock.
        I_aync_rst : IN STD_LOGIC; -- Asnchronous reset.
        --------------------------------------------------------------------

        -------------------------- CONTROL SIGNALS -------------------------   
        O_requestPixel : OUT STD_LOGIC; -- Request a new pixel.
        I_ackPixel : IN STD_LOGIC; -- Acknowledge the request and send a valid "I_pixel" signal.
        O_classifValid : OUT STD_LOGIC; -- The "O_classif" output provides a valid result.
        O_readyClassif : OUT STD_LOGIC; -- Inform that the processor is ready to process a new classif.
        --------------------------------------------------------------------

        -------------------------- INPUT/OUPUT DATA ------------------------ 
        I_pixel : IN STD_LOGIC_VECTOR (G_NBITS_PIXEL - 1 DOWNTO 0); -- 
        O_classif : OUT STD_LOGIC_VECTOR (log2(G_NUMBER_CLASSES) - 1 DOWNTO 0)
        -------------------------- INPUT/OUPUT DATA ------------------------ 

    );
END FCNN_top_unit;

ARCHITECTURE Behavioral OF FCNN_top_unit IS

    --------------------------------------------------
    --					COMPONENT DECLARATION	    --
    --------------------------------------------------

    COMPONENT FSM IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_ack : IN STD_LOGIC;
            I_W_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            I_P_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            I_N_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
            I_W_1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            I_N_2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            I_W_2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            I_N_3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            I_arg : IN STD_LOGIC;
            O_request : OUT STD_LOGIC;
            O_en_load : OUT STD_LOGIC;
            O_en_C_W : OUT STD_LOGIC;
            O_en_C_P : OUT STD_LOGIC;
            O_W_1_en : OUT STD_LOGIC;
            O_N_1_en : OUT STD_LOGIC;
            O_clean_N_1 : OUT STD_LOGIC;
            O_clean_W_1 : OUT STD_LOGIC;
            O_W_2_en : OUT STD_LOGIC;
            O_N_2_en : OUT STD_LOGIC;
            O_clean_W_2 : OUT STD_LOGIC;
            O_clean_N_2 : OUT STD_LOGIC;
            O_N_3_en : OUT STD_LOGIC;
            O_clean_N_3 : OUT STD_LOGIC;
            O_classifValid : OUT STD_LOGIC;
            O_clean_P : OUT STD_LOGIC;
            O_arg : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT CreateWord IS
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
    END COMPONENT;

    COMPONENT Ram_W_1 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            addr_r : IN STD_LOGIC_VECTOR(11 - 1 DOWNTO 0);
            data_r : OUT STD_LOGIC_VECTOR(140 - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Counter_L1 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_N_1_en : IN STD_LOGIC;
            I_W_1_en : IN STD_LOGIC;
            I_W_Clean : IN STD_LOGIC;
            I_N_Clean : IN STD_LOGIC;
            O_N_1 : OUT STD_LOGIC_VECTOR(6 - 1 DOWNTO 0);
            O_W_1 : OUT STD_LOGIC_VECTOR(5 - 1 DOWNTO 0);
            O_W_N : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT SubNeurone_l1 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_data : IN STD_LOGIC_VECTOR(28 * 8 - 1 DOWNTO 0);
            I_W : IN STD_LOGIC_VECTOR(28 * 5 - 1 DOWNTO 0);
            I_C : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            I_biais : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            O_d : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Counter_L2 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_N_2_en : IN STD_LOGIC;
            I_W_2_en : IN STD_LOGIC;
            I_clean_N : IN STD_LOGIC;
            I_clean_W : IN STD_LOGIC;
            O_N_2 : OUT STD_LOGIC_VECTOR(5 - 1 DOWNTO 0);
            O_W_2 : OUT STD_LOGIC_VECTOR(2 - 1 DOWNTO 0);
            O_W_N : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
        );
    END COMPONENT;
    
    COMPONENT Ram_W_2 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            addr_r : IN STD_LOGIC_VECTOR(6 - 1 DOWNTO 0);
            data_r : OUT STD_LOGIC_VECTOR(100 - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Ram_W_3 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            addr_r : IN STD_LOGIC_VECTOR(4 - 1 DOWNTO 0);
            data_r : OUT STD_LOGIC_VECTOR(100 - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Counter_L3 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_N_3_en : IN STD_LOGIC;
            I_clean_N : IN STD_LOGIC;
            O_N_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Argmax IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_P1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P7 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P8 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_P10 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            I_en : IN STD_LOGIC;
            O_I : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            O_done : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT SubNeurone_l2 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_data : IN STD_LOGIC_VECTOR(20 * 8 - 1 DOWNTO 0);
            I_W : IN STD_LOGIC_VECTOR(20 * 5 - 1 DOWNTO 0);
            I_C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            I_biais : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            O_d : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT SubNeurone_l3 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_data : IN STD_LOGIC_VECTOR(20 * 8 - 1 DOWNTO 0);
            I_W : IN STD_LOGIC_VECTOR(20 * 5 - 1 DOWNTO 0);
            I_biais : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            O_d : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT DualPort_RAM IS
        GENERIC (
            G_DEPTH : NATURAL;
            G_WordLength : NATURAL
        );
        PORT (

            I_clk : IN STD_LOGIC;
            I_write : IN STD_LOGIC;
            I_addr_write : IN UNSIGNED(log2(G_DEPTH) - 1 DOWNTO 0);
            I_dataWrite : IN STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0);
            I_addr_read : IN UNSIGNED(log2(G_DEPTH) - 1 DOWNTO 0);
            O_dataRead : OUT STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT NeuronCombinator1 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_en : IN STD_LOGIC;
            I_data : IN STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
            I_ouputswitch : IN STD_LOGIC;
            O_data : OUT STD_LOGIC_VECTOR((40 * 8)/(2 - 0) - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT NeuronCombinator2 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_en : IN STD_LOGIC;
            I_data : IN STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
            I_ouputswitch : IN STD_LOGIC;
            O_data : OUT STD_LOGIC_VECTOR((20 * 8)/(2 - 1) - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT NeuronCombinator3 IS
        PORT (
            I_clk : IN STD_LOGIC;
            I_rst : IN STD_LOGIC;
            I_en : IN STD_LOGIC;
            I_data : IN STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
            I_ouputswitch : IN STD_LOGIC;
            O_data : OUT STD_LOGIC_VECTOR((10 * 8)/(2 - 1) - 1 DOWNTO 0)
        );
    END COMPONENT;

    --------------------------------------------------
    --					CONSTANT DECLARATION	    --
    --------------------------------------------------

    -- Constant are defined here5.

    --------------------------------------------------
    --				  TYPE DECLARATION              --
    --------------------------------------------------

    -- Types are defined here.

    --------------------------------------------------
    --				  SIGNAL DECLARATION            --
    --------------------------------------------------

    -- Signals are defined here..
    SIGNAL I_W_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL I_arg : STD_LOGIC;

    SIGNAL en_load : STD_LOGIC;
    SIGNAL en_C_P : STD_LOGIC;
    SIGNAL en_C_W : STD_LOGIC;
    SIGNAL W_1_en : STD_LOGIC;
    SIGNAL N_1_en : STD_LOGIC;
    SIGNAL W_2_en : STD_LOGIC;
    SIGNAL N_2_en : STD_LOGIC;
    SIGNAL N_3_en : STD_LOGIC;
    SIGNAL O_arg : STD_LOGIC;

    SIGNAL I_O : STD_LOGIC_VECTOR(223 DOWNTO 0);
    SIGNAL en_I_O : STD_LOGIC;

    SIGNAL pixel_count : STD_LOGIC_VECTOR(4 DOWNTO 0);

    -- RAM input
    SIGNAL I_ram_read_W_l1 : STD_LOGIC_VECTOR(4 DOWNTO 0);

    -- RAM outputs
    SIGNAL img_l1 : STD_LOGIC_VECTOR(224 - 1 DOWNTO 0);
    SIGNAL O_W_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL W_1 : STD_LOGIC_VECTOR(140 - 1 DOWNTO 0);
    SIGNAL W_2 : STD_LOGIC_VECTOR(99 DOWNTO 0);
    SIGNAL W_3 : STD_LOGIC_VECTOR(99 DOWNTO 0);

    SIGNAL O_N_1 : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL O_W_N_1 : STD_LOGIC_VECTOR(10 DOWNTO 0);
    SIGNAL O_W_N_2 : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL I_read_W_l1 : STD_LOGIC_VECTOR(10 DOWNTO 0);
    SIGNAL I_read_W_l2 : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL O_W_2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL O_N_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);

    SIGNAL O_N_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL I_read_W_l3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL I_read_B_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- SubNeuron1 outputs
    SIGNAL O_Subneurone_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL O_Subneurone_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL O_Subneurone_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL O_l1 : STD_LOGIC_VECTOR(8 * 40/2 - 1 DOWNTO 0);
    SIGNAL O_l2 : STD_LOGIC_VECTOR(8 * 20 - 1 DOWNTO 0);
    SIGNAL O_l3 : STD_LOGIC_VECTOR(8 * 10 - 1 DOWNTO 0);
    SIGNAL load_subneuron_val_1 : STD_LOGIC;
    SIGNAL load_subneuron_val_2 : STD_LOGIC;

    SIGNAL Class_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_6 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_9 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Class_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL clean_p : STD_LOGIC;
    SIGNAL clean_W_1 : STD_LOGIC;
    SIGNAL clean_N_1 : STD_LOGIC;
    SIGNAL clean_W_2 : STD_LOGIC;
    SIGNAL clean_N_2 : STD_LOGIC;
    SIGNAL clean_N_3 : STD_LOGIC;

    SIGNAL classifValid : STD_LOGIC;
    -- layer 2 outputs
    SIGNAL input_first_part : STD_LOGIC;

BEGIN

    load_subneuron_val_1 <= '1' WHEN (to_integer(unsigned(O_W_1)) = 28) ELSE
        '0';
    load_subneuron_val_2 <= '1' WHEN to_integer(unsigned(O_W_2)) = 2 ELSE
        '0';

    Class_1 <= O_l3(8 * 10 - 1 DOWNTO 8 * 9);
    Class_2 <= O_l3(8 * 9 - 1 DOWNTO 8 * 8);
    Class_3 <= O_l3(8 * 8 - 1 DOWNTO 8 * 7);
    Class_4 <= O_l3(8 * 7 - 1 DOWNTO 8 * 6);
    Class_5 <= O_l3(8 * 6 - 1 DOWNTO 8 * 5);
    Class_6 <= O_l3(8 * 5 - 1 DOWNTO 8 * 4);
    Class_7 <= O_l3(8 * 4 - 1 DOWNTO 8 * 3);
    Class_8 <= O_l3(8 * 3 - 1 DOWNTO 8 * 2);
    Class_9 <= O_l3(8 * 2 - 1 DOWNTO 8 * 1);
    Class_10 <= O_l3(8 * 1 - 1 DOWNTO 0);

    O_readyClassif <= classifvalid;
    O_classifvalid <= classifvalid;

    --I_ram_read_W_l1 <= O_W_1 when (to_integer(unsigned(O_W_1)) /= 28) else (others => '0');

    Fsm_top : FSM
    PORT MAP(
        i_clk => I_clk,
        I_rst => I_aync_rst,
        i_ack => I_ackPixel,
        i_w_0 => I_W_0,
        i_p_0 => pixel_count,
        i_n_1 => O_N_1,
        i_w_1 => O_W_1,
        i_n_2 => O_N_2,
        i_w_2 => O_W_2,
        i_n_3 => O_N_3,
        i_arg => I_arg,
        o_request => O_requestPixel,
        o_en_load => en_load,
        o_en_c_w => en_C_W,
        o_en_c_p => en_C_P,
        o_w_1_en => W_1_en,
        o_n_1_en => N_1_en,
        o_clean_n_1 => clean_n_1,
        o_clean_w_1 => clean_w_1,
        o_w_2_en => W_2_en,
        o_n_2_en => N_2_en,
        o_clean_N_2 => clean_N_2,
        o_clean_W_2 => clean_W_2,
        o_n_3_en => N_3_en,
        O_clean_N_3 => clean_N_3,
        o_clean_p => clean_P,
        o_classifvalid => classifValid,
        o_arg => O_arg
    );

    CreateWord_1 : CreateWord
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_pixel => I_pixel,
        I_en_load => en_load,
        I_en_C_P => en_C_P,
        I_en_C_W => en_C_W,
        I_clean_P => clean_P,
        O_I_0 => I_O,
        O_en_I_0 => en_I_O,
        O_pixelCount => pixel_count,
        O_W_0 => I_W_0
    );

    Ram_W_1_1 : Ram_W_1
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        addr_r => I_read_W_l1,
        data_r => W_1
    );

    Counter_L1_1 : Counter_L1
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_N_1_en => N_1_en, -- en neurone
        I_W_1_en => W_1_en, -- en mots
        O_N_1 => O_N_1, -- compteur neurone
        O_W_1 => O_W_1, -- compteur mots
        I_W_Clean => clean_W_1,
        I_N_Clean => clean_N_1,
        O_W_N => O_W_N_1 -- mult mots+(neurone*nb_mot) pour Ram_W_1
    );

    SubNeurone_L1_1 : SubNeurone_l1
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_data => img_l1,
        I_W => W_1,
        I_C => O_W_1,
        I_biais => (OTHERS => '0'),
        O_d => O_Subneurone_1
    );
    NeuronCombinator_1 : NeuronCombinator1
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_en => load_subneuron_val_1,
        I_data => O_Subneurone_1,
        I_ouputswitch => input_first_part,
        O_data => O_l1
    );
    Ram_I : DualPort_RAM
    GENERIC MAP(
        G_DEPTH => 28,
        G_WordLength => 224
    )
    PORT MAP(
        I_clk => I_clk,
        I_write => en_I_O,
        I_addr_write => unsigned(pixel_count), -- pixel counter 
        I_dataWrite => I_O,
        I_addr_read => unsigned(I_ram_read_W_l1), -- pixel counter
        O_dataRead => img_l1
    );

    Counter_L2_1 : Counter_L2
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_N_2_en => N_2_en,
        I_W_2_en => W_2_en,
        I_clean_N => clean_N_2,
        I_clean_W => clean_W_2,
        O_N_2 => O_N_2, -- 20 neurones
        O_W_2 => O_W_2, -- 2 mots
        O_W_N => O_W_N_2
    );
    SubNeurone_L2_1 : SubNeurone_l2
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_data => O_l1,
        I_W => W_2,
        I_C => O_W_2,
        I_biais => (OTHERS => '0'),
        O_d => O_Subneurone_2
    );

    Ram_W_2_1 : Ram_W_2
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        addr_r => I_read_W_l2,
        data_r => W_2
    );

    NeuronCombinator_2 : NeuronCombinator2
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_en => load_subneuron_val_2,
        I_data => O_Subneurone_2,
        I_ouputswitch => '0',
        O_data => O_l2
    );

    Counter_L3_1 : Counter_L3
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_N_3_en => N_3_en,
        I_clean_N => clean_N_3,
        O_N_3 => O_N_3 -- 10 neurones
    );
    SubNeurone_L3_1 : SubNeurone_l3
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_data => O_l2,
        I_W => W_3,
        I_biais => (OTHERS => '0'),
        O_d => O_Subneurone_3
    );

    Ram_W_3_1 : Ram_W_3
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        addr_r => I_read_W_l3,
        data_r => W_3
    );

    Argmax_1 : Argmax
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_P1 => Class_1,
        I_P2 => Class_2,
        I_P3 => Class_3,
        I_P4 => Class_4,
        I_P5 => Class_5,
        I_P6 => Class_6,
        I_P7 => Class_7,
        I_P8 => Class_8,
        I_P9 => Class_9,
        I_P10 => Class_10,
        I_en => O_arg,
        O_I => O_Classif,
        O_done => I_arg
    );

    NeuronCombinator_3 : NeuronCombinator3
    PORT MAP(
        I_clk => I_clk,
        I_rst => I_aync_rst,
        I_en => N_3_en,
        I_data => O_Subneurone_3,
        I_ouputswitch => '0',
        O_data => O_l3
    );

    --input_first_part <= O_W_2(0);

    PROCESS (O_W_2, W_2_en)
    BEGIN
        IF (W_2_en = '1') THEN
            input_first_part <= (NOT O_W_2(0)) AND (NOT O_W_2(1));
        ELSE
            input_first_part <= O_W_2(0);
        END IF;
    END PROCESS;

    PROCESS (O_W_N_1, W_1_en)
    BEGIN
        IF to_integer(unsigned(O_W_N_1)) < 1119 THEN
            IF (W_1_en = '1') THEN
                I_read_W_l1 <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(O_W_N_1)) + 1, 11));
            ELSE
                I_read_W_l1 <= O_W_N_1;
            END IF;
        ELSE
            I_read_W_l1 <= (OTHERS => '0');
        END IF;
    END PROCESS;

    PROCESS (O_W_1, w_1_en)
    BEGIN
        IF to_integer(unsigned(O_W_1)) < 27 THEN
            IF (w_1_en = '1') THEN
                I_ram_read_W_l1 <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(O_W_1)) + 1, 5));
            ELSE
                I_ram_read_W_l1 <= O_W_1;
            END IF;

        ELSE
            I_ram_read_W_l1 <= (OTHERS => '0');
        END IF;
    END PROCESS;

    PROCESS (O_W_N_2, W_2_en)
    BEGIN
        IF to_integer(unsigned(O_W_N_2)) < 39 THEN
            IF (w_2_en = '1') THEN
                I_read_W_l2 <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(O_W_N_2)) + 1, 6));
            ELSE
                I_read_W_l2 <= O_W_N_2;
            END IF;
        ELSE
            I_read_W_l2 <= (OTHERS => '0');
        END IF;
    END PROCESS;

    PROCESS (O_N_3, N_3_en)
    BEGIN
        IF to_integer(unsigned(O_N_3)) < 9 THEN
            IF (n_3_en = '1') THEN
                I_read_W_l3 <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(O_N_3)) + 1, 4));
                I_read_B_3 <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(O_N_3)) + 1, 4));
            ELSE
                I_read_W_l3 <= O_N_3;
                I_read_B_3 <= O_N_3;
            END IF;
        ELSE
            I_read_B_3 <= (OTHERS => '0');
            I_read_W_l3 <= (OTHERS => '0');
        END IF;
    END PROCESS;

    --I_ram_read_W_l1 <= O_W_1 when (to_integer(unsigned(O_W_1)) /= 28) else (others => '0');
END Behavioral;
