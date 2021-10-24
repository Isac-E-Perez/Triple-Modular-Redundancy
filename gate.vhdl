library ieee;
use ieee.std_logic_1164.all;

entity gate is 
  generic (N : integer := 8); -- I use generic when performing routines that performs a certain task on an input array of a generic size. Default value of 8.
  port ( 
    A, B, C : in std_logic_vector(N-1 downto 0);
    f : out std_logic_vector(N-1 downto 0);
    y : out std_logic
       );
end gate;

architecture behavioral of gate is 
begin
  process(A, B, C)
  begin
    y <= '0'; -- default 
    if (A = B) then f <= A; end if;
    if (A = C) then f <= A; end if;
    if (B = C) then f <= B; end if;
    if (A /= B) and (B /= C) and (A /= C) then   
      f <= (others => '0');
      y <= '1';
    end if;
  end process;
end behavioral;      
