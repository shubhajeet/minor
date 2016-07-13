----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:05:01 06/12/2016 
-- Design Name: 
-- Module Name:    baud_rate_gen - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity baud_rate_gen is
	generic(N :integer := 8;			--number of bits
				M: integer := 163);		--mod(M) counter
	
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           max_tick : out  STD_LOGIC);
end baud_rate_gen;

architecture Behavioral of baud_rate_gen is
	signal r_reg : unsigned(N-1 downto 0);
	signal r_next: unsigned (N-1 downto 0);
begin
	process(clk, reset)
	begin
		if(reset = '1') then
			r_reg <= (others => '0');
		elsif(clk'event and clk = '1') then
			r_reg <= r_next;
		end if;
	end process;
	
	r_next <= (others => '0') when r_reg = (M - 1) else
					r_reg+1;
				
	--output logic
	max_tick <= '1' when r_reg = (M-1) else '0';
end Behavioral;

