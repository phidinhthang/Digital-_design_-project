library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the 2-to-1 MUX
entity Mux4 is
    GENERIC ( N : Integer := 8);
    Port (
        D0     : in  STD_LOGIC_VECTOR ( N - 1 downto 0);
        D1     : in  STD_LOGIC_VECTOR ( N - 1 downto 0);
        D2     : in  STD_LOGIC_VECTOR ( N - 1 downto 0);
        D3     : in  STD_LOGIC_VECTOR ( N - 1 downto 0);
        S   : in  STD_LOGIC_VECTOR( 1 downto 0 );  -- Select signal
        Y     : out STD_LOGIC_VECTOR ( N - 1 downto 0)  -- Output Y
    );
end Mux4;

-- Architecture definition using dataflow style
architecture Dataflow of Mux4 is
begin
    -- Dataflow description using 'when else'
    Y <= D0 when S = "00" else
         D1 when S = "01" else
         D2 when S = "10" else
         D3;
end Dataflow;