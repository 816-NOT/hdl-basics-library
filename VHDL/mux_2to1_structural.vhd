library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1_structural is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s  : in  STD_LOGIC;
           y  : out STD_LOGIC);
end entity mux_2to1_structural;

architecture structural of mux_2to1_structural is

    -- 1. Component Declarations (Blueprints from your library)
    component not_gate is
        Port ( a : in  STD_LOGIC;
               y : out STD_LOGIC);
    end component;

    component and_gate is
        Port ( a : in  STD_LOGIC;
               b : in  STD_LOGIC;
               y : out STD_LOGIC);
    end component;

    component or_gate is
        Port ( a : in  STD_LOGIC;
               b : in  STD_LOGIC;
               y : out STD_LOGIC);
    end component;

    -- 2. Internal Signal Declarations (The physical wires)
    signal s_bar : STD_LOGIC;
    signal and0  : STD_LOGIC;
    signal and1  : STD_LOGIC;

begin

    -- 3. Component Instantiations (Wiring them up)
    U_NOT : not_gate 
        port map (
            a => s,
            y => s_bar
        );

    U_AND0 : and_gate 
        port map (
            a => i0,
            b => s_bar,
            y => and0
        );

    U_AND1 : and_gate 
        port map (
            a => i1,
            b => s,
            y => and1
        );

    U_OR : or_gate 
        port map (
            a => and0,
            b => and1,
            y => y
        );

end architecture structural;
