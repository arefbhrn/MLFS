LIBRARY IEEE;

--Standard library
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

--Not standard library
USE IEEE.STD_LOGIC_MISC.ALL; --not standard, but helpfull for AND_REDUCE.

--For testbench function
USE STD.TEXTIO.ALL;
USE ieee.std_logic_textio.ALL;

PACKAGE utils_pkg IS

    ------------------------------
    --           TYPE           --
    ------------------------------

    -- Unconstrained array declaration for each usefull type.
    TYPE T_NATURAL_ARRAY IS ARRAY(NATURAL RANGE <>) OF NATURAL;
    TYPE T_INTEGER_ARRAY IS ARRAY(NATURAL RANGE <>) OF INTEGER;
    TYPE T_REAL_ARRAY IS ARRAY(NATURAL RANGE <>) OF REAL;
    TYPE T_CHARACTER_ARRAY IS ARRAY(NATURAL RANGE <>) OF CHARACTER;

    -- Constrained array declaration for each usefull type.
    TYPE T_STD_LOGIC_VECTOR64_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(63 DOWNTO 0);
    TYPE T_STD_LOGIC_VECTOR32_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
    TYPE T_STD_LOGIC_VECTOR24_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(23 DOWNTO 0);
    TYPE T_STD_LOGIC_VECTOR16_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    TYPE T_STD_LOGIC_VECTOR12_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
    TYPE T_STD_LOGIC_VECTOR8_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    TYPE T_STD_LOGIC_VECTOR3_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(2 DOWNTO 0);
    TYPE T_STD_LOGIC_VECTOR2_ARRAY IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(1 DOWNTO 0);
    -- Constrained array declaration for each usefull type.
    TYPE T_UNSIGNED64_ARRAY IS ARRAY(NATURAL RANGE <>) OF UNSIGNED (63 DOWNTO 0);
    TYPE T_UNSIGNED32_ARRAY IS ARRAY(NATURAL RANGE <>) OF UNSIGNED (31 DOWNTO 0);
    TYPE T_UNSIGNED24_ARRAY IS ARRAY(NATURAL RANGE <>) OF UNSIGNED (23 DOWNTO 0);
    TYPE T_UNSIGNED16_ARRAY IS ARRAY(NATURAL RANGE <>) OF UNSIGNED (15 DOWNTO 0);
    TYPE T_UNSIGNED12_ARRAY IS ARRAY(NATURAL RANGE <>) OF UNSIGNED (11 DOWNTO 0);
    TYPE T_UNSIGNED8_ARRAY IS ARRAY(NATURAL RANGE <>) OF UNSIGNED (7 DOWNTO 0);
    TYPE T_UNSIGNED2_ARRAY IS ARRAY(NATURAL RANGE <>) OF UNSIGNED (1 DOWNTO 0);
    -- Constrained array declaration for each usefull type.
    TYPE T_SIGNED64_ARRAY IS ARRAY(NATURAL RANGE <>) OF SIGNED (63 DOWNTO 0);
    TYPE T_SIGNED32_ARRAY IS ARRAY(NATURAL RANGE <>) OF SIGNED (31 DOWNTO 0);
    TYPE T_SIGNED24_ARRAY IS ARRAY(NATURAL RANGE <>) OF SIGNED (23 DOWNTO 0);
    TYPE T_SIGNED16_ARRAY IS ARRAY(NATURAL RANGE <>) OF SIGNED (15 DOWNTO 0);
    TYPE T_SIGNED12_ARRAY IS ARRAY(NATURAL RANGE <>) OF SIGNED (11 DOWNTO 0);
    TYPE T_SIGNED8_ARRAY IS ARRAY(NATURAL RANGE <>) OF SIGNED (7 DOWNTO 0);

    ------------------------------
    --    FUNCTION DECLARATION  --
    ------------------------------

    --Result = ceil(log2(I)), where I is a natural number.
    FUNCTION log2(i : NATURAL) RETURN NATURAL;
    FUNCTION findMaxInArray(inputArray : T_NATURAL_ARRAY) RETURN NATURAL;
    --Function which read data from file (for testbench only)
    --path : the path of the file to read.
    --data_part : "real" and "imaginary". Real part must be located at the beginning of the file.
    --FL : File Length. If you don't know the length of the file, then use find_file_length function.
    IMPURE FUNCTION read_data(path : STRING; FL : NATURAL) RETURN T_INTEGER_ARRAY;

    --Find the length of the file (number of line). 
    --Use this function only if there is no means to know the length of the file.
    --path : the part of the file to read.
    IMPURE FUNCTION find_file_length(path : STRING) RETURN NATURAL;

END utils_pkg;
PACKAGE BODY utils_pkg IS

    ------------------------------
    --   FUNCTION DEFINITION    --
    ------------------------------

    FUNCTION log2(i : NATURAL) RETURN NATURAL IS
        VARIABLE temp : INTEGER := i - 1;
        VARIABLE ret_val : INTEGER := 0;
    BEGIN

        IF (i = 1) THEN

            RETURN ret_val;

        END IF;
        WHILE temp > 1 LOOP
            ret_val := ret_val + 1;
            temp := temp / 2;
        END LOOP;

        RETURN ret_val + 1;
    END FUNCTION;

    FUNCTION findMaxInArray(inputArray : T_NATURAL_ARRAY) RETURN NATURAL IS
        VARIABLE arrayLength : NATURAL := inputArray'length;
        VARIABLE maxValue : NATURAL := 0;
    BEGIN

        FOR I IN 0 TO arrayLength LOOP
            IF (maxValue < inputArray(I)) THEN
                maxValue := inputArray(I);
            END IF;
        END LOOP;

        RETURN maxValue;
    END FUNCTION;
    IMPURE FUNCTION find_file_length(path : STRING) RETURN NATURAL IS
        FILE FILE_DATA : text OPEN READ_MODE IS path;
        VARIABLE L : line;
        VARIABLE I : NATURAL;
    BEGIN
        I := 0;
        WHILE (NOT endfile(FILE_DATA)) LOOP
            readline(FILE_DATA, L);
            I := I + 1;
        END LOOP;
        RETURN I;

    END FUNCTION;

    IMPURE FUNCTION read_data(path : STRING; FL : NATURAL) RETURN T_INTEGER_ARRAY IS
        FILE FILE_DATA : text OPEN READ_MODE IS path;
        VARIABLE data_a : T_INTEGER_ARRAY(0 TO FL - 1);
        VARIABLE L : line;
        VARIABLE A : INTEGER;
    BEGIN

        FOR I IN 0 TO FL - 1 LOOP

            IF (NOT endfile(FILE_DATA)) THEN
                readline(FILE_DATA, L);
                read(L, A);
                data_a(I) := A;
            ELSE
                data_a(I) := 0;
            END IF;

        END LOOP;

        RETURN data_a;

    END FUNCTION;

END utils_pkg;
