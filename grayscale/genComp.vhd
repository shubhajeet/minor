library IEEE;
use IEEE.std_logic_1164.all;

  entity adder is
    generic( N : integer);
      port( A , B  : in std_logic_vector(N-1 downto 0);
              C : in std_logic_vector(N-1 downto 0);
                Carry : in bit);
  end adder;

entity shift is
  generic( iBit, N : integer);
  port( A : in std_logic_vector(ibit-1 downto 0);
        B : out std_logic_vector(ibit+N downto 0)
        );
end shift;

entity timer is
  generic( value: integer);
  port( clk : in std_logic;
        int : out std_logic);
end timer;


architecture Behavioral of adder is
  signal result : std_logic_vector(N downto 0);
  begin
  process(A,B)
  begin
    result <= '0' & A + '0' & B;
    C <= result(N-1 downto 0);
    Carry <= result(N);
  end process;
end Behavioral;


architecture Behavioral of shift is
begin
  process
  begin
    if (N > 0) then
      B <= (A(ibit-1 downto 0), others => '0');
    elsif (N >= 0) then
      B <= A(ibit-1 downto -N);
    end if;
  end process;
end Behavioral;

architecture Behavioral of timer is

begin
  process(clk)
    variable count: integer := 0;
  begin    
    count := count + 1;
    if (count = value) then
      int <= '1';
    else
      int <= '0';
    end if;
  end process;
end Behavioral;

    
    
