LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.utils_pkg.ALL;

ENTITY DualPort_RAM IS
    GENERIC (
        G_DEPTH : NATURAL := 28; --Length of memory
        G_WordLength : NATURAL := 224; --Word Length
        G_STYLE : STRING := "block"
    );
    PORT (

        I_clk : IN STD_LOGIC; -- Common clock.

        -- Port A inferface
        I_write : IN STD_LOGIC;
        I_addr_write : IN UNSIGNED(log2(G_DEPTH) - 1 DOWNTO 0);
        I_dataWrite : IN STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0);

        -- Port B inferface
        I_addr_read : IN UNSIGNED(log2(G_DEPTH) - 1 DOWNTO 0);
        O_dataRead : OUT STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0)
    );
END DualPort_RAM;

ARCHITECTURE rtl OF DualPort_RAM IS
    -- Shared memory
    TYPE mem_type IS ARRAY (G_DEPTH - 1 DOWNTO 0) OF STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0);
    SIGNAL mem : mem_type;

    ATTRIBUTE ram_style : STRING;
    ATTRIBUTE ram_style OF mem : SIGNAL IS G_STYLE;

BEGIN

    -- Port A
    PROCESS (I_clk)
    BEGIN
        IF (I_clk'event AND I_clk = '1') THEN
            IF (I_write = '1') THEN
                mem(to_integer(I_addr_write)) <= I_dataWrite;
            END IF;
            O_dataRead <= mem(to_integer(I_addr_read));
        END IF;
    END PROCESS;

END rtl;
