LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;
USE work.utils_pkg.ALL;

USE STD.TEXTIO.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY testbench_MNIST_FCNN IS
END testbench_MNIST_FCNN;

ARCHITECTURE Behavioral OF testbench_MNIST_FCNN IS

    PROCEDURE Print(s : STRING) IS
        VARIABLE buf : line;
    BEGIN
        write(buf, s);
        WriteLine(OUTPUT, buf);
    END PROCEDURE Print;

    FUNCTION ite(cond : BOOLEAN; value1 : INTEGER; value2 : INTEGER) RETURN INTEGER IS
    BEGIN
        IF cond THEN
            RETURN value1;
        ELSE
            RETURN value2;
        END IF;
    END FUNCTION;

    FUNCTION ite(cond : BOOLEAN; value1 : STRING; value2 : STRING) RETURN STRING IS
    BEGIN
        IF cond THEN
            RETURN value1;
        ELSE
            RETURN value2;
        END IF;
    END FUNCTION;

    FUNCTION str_format(Value : REAL; precision : NATURAL := 3) RETURN STRING IS
        CONSTANT s : REAL := sign(Value);
        CONSTANT val : REAL := Value * s;
        CONSTANT int : INTEGER := INTEGER(floor(val));
        CONSTANT frac : INTEGER := INTEGER(round((val - real(int)) * 10.0 ** precision));
        CONSTANT overflow : BOOLEAN := frac >= 10 ** precision;
        CONSTANT int2 : INTEGER := ite(overflow, int + 1, int);
        CONSTANT frac2 : INTEGER := ite(overflow, frac - 10 ** precision, frac);
        CONSTANT frac_str : STRING := INTEGER'image(frac2);
        CONSTANT res : STRING := INTEGER'image(int2) & "." & (2 TO (precision - frac_str'length + 1) => '0') & frac_str;
    BEGIN
        RETURN ite((s < 0.0), "-" & res, res);
    END FUNCTION;

    --------------------------------------------------
    --			UNIT UNDER TEST  PARAMETERS            --
    --------------------------------------------------

    -- /!\ TO BE MODIFIED OR COMPLETED /!\ 
    CONSTANT C_NBITS_WEIGHTS : NATURAL := 16; -- Number of bit for the weight coefficients? TBC...

    -- To be completed...

    --------------------------------------------------
    --			     SIMULATION PARAMETERS             --
    --------------------------------------------------

    -- /!\ TO BE MODIFIED /!\ 
    CONSTANT C_NUM_CLASSIF_SIMUL : NATURAL := 100; -- number of image classification to test. /!\ simulation time /!\ .
    CONSTANT C_IMAGE_FILEPATH : STRING := "../testbench_files/data/"; -- File path where the pixel data are stored.
    CONSTANT C_TARGET_FILEPATH : STRING := "../testbench_files/Targets.tb"; -- File path where the class target for each image are stored.

    --------------------------------------------------
    --	      HARD CONSTANT /!\ DO NOT TOUCH /!\     --
    --------------------------------------------------

    CONSTANT C_CLOCK_PERIOD : TIME := 10 ns; -- Time sampling.
    CONSTANT C_NBITS_PIXELS : NATURAL := 8; -- Number of bit for the pixel data.
    CONSTANT C_NUMBER_CLASSES : NATURAL := 10; -- Number of classes.
    CONSTANT C_NBITS_CLASSIF_OUT : NATURAL := log2(C_NUMBER_CLASSES); -- Number of bit for the classif output.
    CONSTANT C_NUM_PIXEL_PER_IMAGE : NATURAL := 784; -- Number of pixel per image.

    --------------------------------------------------
    --				  SIGNAL DECLARATION                --
    --------------------------------------------------

    -- Debug counter, to count the number of cycle and help beginning.
    SIGNAL S_DEBUG_COUNTER : INTEGER := 0;
    SIGNAL S_NUMBER_CLASSIF_ERRORS : INTEGER := 0; -- Signal to be monitored to validate the network.

    -- signal which store all the input pixel values.
    SIGNAL S_pixel_array : T_INTEGER_ARRAY(0 TO C_NUM_PIXEL_PER_IMAGE - 1);

    -- signal which stored all the target values.
    CONSTANT S_targets_array : T_INTEGER_ARRAY(0 TO C_NUM_CLASSIF_SIMUL - 1) := read_data(C_TARGET_FILEPATH, C_NUM_CLASSIF_SIMUL);

    -- Signals for simulation purpose.
    SIGNAL S_enable_simul : STD_LOGIC;
    SIGNAL S_clk : STD_LOGIC;
    SIGNAL S_LastPixelFlag : STD_LOGIC;
    SIGNAL S_SimulationEnded : STD_LOGIC := '0';
    -- Signals mapped to the Unit Under Test (uut)
    SIGNAL S_resetN_uut : STD_LOGIC;
    SIGNAL S_pixel_uut : STD_LOGIC_VECTOR(C_NBITS_PIXELS - 1 DOWNTO 0);
    SIGNAL S_ackPixel_uut : STD_LOGIC;
    SIGNAL S_classif_uut : STD_LOGIC_VECTOR(C_NBITS_CLASSIF_OUT - 1 DOWNTO 0);
    SIGNAL S_requestPixel_uut : STD_LOGIC;
    SIGNAL S_classifValid_uut : STD_LOGIC;
    SIGNAL S_readyClassif_uut : STD_LOGIC;
BEGIN

    --------------------------------------------------
    --				  SIMULATION CONTROL                --
    --------------------------------------------------	

    -- Generation of the clock signal and the debug counter.
    clk_p : PROCESS
    BEGIN
        S_clk <= '0';
        WAIT FOR C_CLOCK_PERIOD/2;
        S_clk <= '1';
        WAIT FOR C_CLOCK_PERIOD/2;
        S_DEBUG_COUNTER <= S_DEBUG_COUNTER + 1;
        IF (S_SimulationEnded = '1') THEN
            WAIT;
        END IF;
    END PROCESS;

    -- Simulation control process.
    init_p : PROCESS
    BEGIN

        -- Initial state.
        S_enable_simul <= '0';
        WAIT FOR 10 * C_CLOCK_PERIOD;
        WAIT UNTIL S_clk = '0';
        S_enable_simul <= '1';

        FOR I IN 0 TO C_NUM_CLASSIF_SIMUL - 1 LOOP

            -- Load all the pixel in an array. 
            S_pixel_array <= read_data(C_IMAGE_FILEPATH & INTEGER'image(I) & ".txt", C_NUM_PIXEL_PER_IMAGE);

            WAIT UNTIL S_clk = '1'; -- Synchronize the simulation process with the clock.
            WAIT UNTIL S_LastPixelFlag = '1';
        END LOOP;

        WAIT FOR 3000 * C_CLOCK_PERIOD;
        S_enable_simul <= '0';
        WAIT FOR 100 * C_CLOCK_PERIOD;
        S_SimulationEnded <= '1';

        Print("Final Report:");
        Print("    Total Tests -> " & INTEGER'image(C_NUM_CLASSIF_SIMUL));
        Print("    Errors -> " & INTEGER'image(S_NUMBER_CLASSIF_ERRORS));
        Print("    Accuracy -> " & str_format(real((C_NUM_CLASSIF_SIMUL - S_NUMBER_CLASSIF_ERRORS) * 100) / real(C_NUM_CLASSIF_SIMUL), 2) & "%");

        WAIT;

    END PROCESS;

    --------------------------------------------------
    --				  UUT INSTANCIATION                 --
    --------------------------------------------------	

    -- TX waveform under test.
    unit_under_test_inst : ENTITY work.FCNN_top_unit
        GENERIC MAP(
            G_NBITS_PIXEL => C_NBITS_PIXELS,
            G_NUMBER_CLASSES => C_NUMBER_CLASSES
        )
        PORT MAP(
            I_clk => S_clk,
            I_aync_rst => S_resetN_uut,
            I_pixel => S_pixel_uut,
            I_ackPixel => S_ackPixel_uut,
            O_classif => S_classif_uut,
            O_requestPixel => S_requestPixel_uut,
            O_classifValid => S_classifValid_uut,
            O_readyClassif => S_readyClassif_uut
        );

    S_ackPixel_uut <= S_requestPixel_uut WHEN (S_enable_simul = '1' AND S_LastPixelFlag = '0') ELSE
        '0';

    -- Process which control the input pixel data generation (loaded from files) 
    -- and generate the uut input control signal.
    PROCESS (S_clk)
        VARIABLE V_pixelIndex : NATURAL := 0;

    BEGIN
        IF (rising_edge(S_clk)) THEN

            IF (S_enable_simul = '0') THEN
                S_pixel_uut <= STD_LOGIC_VECTOR(to_unsigned(S_pixel_array(0), C_NBITS_PIXELS));
                V_pixelIndex := 0;
                S_LastPixelFlag <= '0';
                S_resetN_uut <= '0';
            ELSE

                S_resetN_uut <= '1';

                IF (V_pixelIndex = C_NUM_PIXEL_PER_IMAGE) THEN
                    V_pixelIndex := 0;
                    S_LastPixelFlag <= '1';
                ELSE
                    S_LastPixelFlag <= '0';
                    IF (S_requestPixel_uut = '1' AND V_pixelIndex < C_NUM_PIXEL_PER_IMAGE) THEN
                        S_pixel_uut <= STD_LOGIC_VECTOR(to_unsigned(S_pixel_array(V_pixelIndex), C_NBITS_PIXELS));
                        V_pixelIndex := V_pixelIndex + 1;
                    END IF;
                END IF;

            END IF;

        END IF;
    END PROCESS;
    -- Process which count the number of classif/ errors.
    PROCESS (S_clk)
        VARIABLE V_target_index : INTEGER := 0;
    BEGIN
        IF (rising_edge(S_clk)) THEN

            -- New classif result available.
            IF (S_classifValid_uut = '1') THEN

                IF (S_targets_array(V_target_index) /= to_integer(unsigned(S_classif_uut))) THEN
                    Print(INTEGER'image(V_target_index) & ". !!WRONG PREDICTION!! :");
                    Print("    Expected: " & INTEGER'image(S_targets_array(V_target_index)));
                    Print("    Predicted: " & INTEGER'image(to_integer(unsigned(S_classif_uut))));
                    S_NUMBER_CLASSIF_ERRORS <= S_NUMBER_CLASSIF_ERRORS + 1;
                ELSE
                    Print(INTEGER'image(V_target_index) & ". CORRECT PREDICTION -> " & INTEGER'image(S_targets_array(V_target_index)));
                END IF;

                V_target_index := V_target_index + 1;

            END IF;

        END IF;
    END PROCESS;

END Behavioral;
