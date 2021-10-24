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
signal B : std_logic_vector(N-1 downto 0) := (others => '0');
signal C : std_logic_vector(N-1 downto 0) := (others => '0'); 
  
-- Outputs   
signal f : std_logic_vector(N-1 downto 0);
signal y : std_logic;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut: gate port map(A=>A, B=>B, C=>C, f=>f, y=>y);
  
  -- Stimulus Process
  stim_proc : process
  begin
    wait for 100 ns; -- hold reset state for 100 ns 
    
    -- Stimuli: 
    A <= x"09"; B <= x"09"; C <= x"10"; wait for 20 ns;
    A <= x"30"; B <= x"B4"; C <= x"B4"; wait for 20 ns;
    A <= x"AB"; B <= x"20"; C <= x"AB"; wait for 20 ns;
    A <= x"CE"; B <= x"45"; C <= x"30"; wait for 20 ns;
    A <= x"00"; B <= x"00"; C <= x"00"; wait for 20 ns;
     
    assert false report "Reached end of test"
    wait;
  end process;
end behavioral;
