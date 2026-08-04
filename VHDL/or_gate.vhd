library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out STD_LOGIC);
end entity or_gate;

architecture dataflow of or_gate is
begin
    y <= a or b; -- Concurrent signal assignment
end architecture dataflow;
