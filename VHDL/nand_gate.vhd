library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out STD_LOGIC);
end entity nand_gate;

architecture dataflow of nand_gate is
begin
    y <= a nand b; -- VHDL has a built-in 'nand' operator
end architecture dataflow;
