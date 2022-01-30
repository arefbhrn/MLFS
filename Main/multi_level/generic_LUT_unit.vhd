LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.utils_pkg.ALL;

USE STD.TEXTIO.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY generic_LUT_unit IS
    GENERIC (
        G_FILEPATH : STRING; -- File path where the value to store are located.
        G_DEPTH_LUT : NATURAL; -- Depth of the LUT.
        G_NBIT_LUT : NATURAL; -- Wordsize of the LUT.
        G_STYLE : STRING := "block" -- Synthesis option: "distributed" uses slices, "block" uses BRAM.
    );
    PORT (

        I_clk : IN STD_LOGIC; -- Typical system clock.
        I_sel_sample : IN STD_LOGIC_VECTOR(log2(G_DEPTH_LUT) - 1 DOWNTO 0); -- Address of the LUT.
        O_LUT_value : OUT STD_LOGIC_VECTOR(G_NBIT_LUT - 1 DOWNTO 0) -- Output data of the LUT.
    );
END generic_LUT_unit;

ARCHITECTURE Behavioral OF generic_LUT_unit IS

    TYPE T_LUT_array IS ARRAY (0 TO G_DEPTH_LUT - 1) OF STD_LOGIC_VECTOR(G_NBIT_LUT - 1 DOWNTO 0);

    IMPURE FUNCTION init_LUT_with_file_contents RETURN T_LUT_array IS
        FILE FILE_DATA : text OPEN READ_MODE IS G_FILEPATH;
        VARIABLE V_LUT_samples : T_LUT_array;
        VARIABLE V_line_idx : line;
    BEGIN
        FOR I IN 0 TO G_DEPTH_LUT - 1 LOOP
            readline(FILE_DATA, V_line_idx);
            read(V_line_idx, V_LUT_samples(I));
        END LOOP;
        RETURN V_LUT_samples;
    END FUNCTION;

    SIGNAL C_LUT_SAMPLES : T_LUT_array := init_LUT_with_file_contents;

    SIGNAL R_LUT_cpx : STD_LOGIC_VECTOR(G_NBIT_LUT - 1 DOWNTO 0);

    ATTRIBUTE rom_style : STRING;
    ATTRIBUTE rom_style OF C_LUT_SAMPLES : SIGNAL IS G_STYLE;

BEGIN

    PROCESS (I_clk)
    BEGIN

        IF (rising_edge(I_clk)) THEN
            O_LUT_value <= C_LUT_SAMPLES(to_integer(unsigned(I_sel_sample)));
        END IF;

    END PROCESS;

END Behavioral;