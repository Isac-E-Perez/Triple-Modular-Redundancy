library ieee;
use ieee.std_logic_1164.all;

entity gate_tb is 
end gate_tb;
  
architecture behavioral of gate_tb is 
  
  -- Compnent Declaratoin for the Unit Under Test (UUT)
  component gate
  generic (N : integer := 8);  
  port ( 
    A, B, C : in std_logic_vector(N-1 downto 0);
    f : out std_logic_vector(N-1 downto 0);
    y : out std_logic
       );
  end component;

-- Inputs
signal A : std_logic_vector(N-1 downto 0) := (others => '0');
  
-- Outputs   
