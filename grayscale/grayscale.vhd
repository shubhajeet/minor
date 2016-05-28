library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Grayscale is
  generic(
    N:integer := 8);
  port ( clk: in STD_LOGIC;
         R, G , B: in STD_LOGIC_VECTOR(N-1 downto 0);
         Gray: out STD_LOGIC_VECTOR(N-1 downto 0)
         );
end Grayscale;

architecture Behavioural of Grayscale is
  component adder
    generic( N : integer);
    port( A , B  : in std_logic_vector(N-1 downto 0);
          C : in std_logic_vector(N-1 downto 0);
          Carry : in bit);
    end component;
    
    component shift
      generic( iBit, N : integer);
      port( A : in std_logic_vector(ibit-1 downto 0);
            B : out std_logic_vector(ibit+N downto 0));
      end component;
  signal res_rb : STD_LOGIC_VECTOR(N downto 0);
  signal res_g : STD_LOGIC_VECTOR(N downto 0);
  signal sum : STD_LOGIC_VECTOR(N+1 downto 0);
begin
  process(clk)
    rbadder : adder
      generic map(N => N)
      port map(A => R;
               B => B;
               C => res_rb(N-1 downto 0);
               Carry => res_rb(N);
               );
    doubleg: shift
      generic map(iBit => N; N => 2)
      port map(A => G;
               B => res_g);
    rbdgadder: adder
      generic map(N => N+1)
      port map(A => res_rb;
               B => res_rg;
               C => sum(N downto 0);
               Carry => res_rb(N+1));
    calavg: shift
      generic map(iBit => N+1; N => -2)
      port map(A => sum;
               B => Gray);
  end
end Behavioural;

