LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.utils_pkg.ALL;

--Single Port RAM 
ENTITY SinglePort_RAM IS
    GENERIC (
        G_DEPTH : NATURAL := 8; -- Depth of the RAM.
        G_WordLength : NATURAL := 32; -- Word size of the RAM.
        G_STYLE : STRING := "distributed" -- Synthesis option: "distributed" uses slices, "block" uses BRAM.
    );
    PORT (
        I_clk : IN STD_LOGIC; -- Typical system clock.
        I_wr : IN STD_LOGIC; -- Enable write signal.
        I_addr : IN UNSIGNED(log2(G_DEPTH) - 1 DOWNTO 0); -- Address to read/write from/to.
        I_data : IN STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0); -- Input RAM data to write.
        O_data : OUT STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0) -- Output RAM data.
    );

END SinglePort_RAM;

ARCHITECTURE Behavioral OF SinglePort_RAM IS

    TYPE T_ram_type IS ARRAY (G_DEPTH - 1 DOWNTO 0) OF STD_LOGIC_VECTOR(G_WordLength - 1 DOWNTO 0);
    SIGNAL SA_RAM : T_ram_type;

    ATTRIBUTE ram_style : STRING;
    ATTRIBUTE ram_style OF SA_RAM : SIGNAL IS G_STYLE;

BEGIN

    PROCESS (I_clk)
    BEGIN
        IF (I_clk'event AND I_clk = '1') THEN

            IF (I_wr = '1') THEN
                SA_RAM(to_integer(I_addr)) <= I_data;
            END IF;

            O_data <= SA_RAM(to_integer(I_addr));

        END IF;
    END PROCESS;
END Behavioral;
