----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:27 07/16/2016 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
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

entity multiplexer is
	generic(ADDR_WIDTH: integer := 13);
    Port ( 
			clk: in std_logic;
			
			we_n_a, cas_n_a, ras_n_a: in std_logic;
			addr_bank_a: in std_logic_vector(1 downto 0);					
			addr_a: in std_logic_vector(ADDR_WIDTH-1 downto 0);		

			we_n_b, cas_n_b, ras_n_b: in std_logic;							
			addr_bank_b: in std_logic_vector(1 downto 0);					
			addr_b: in std_logic_vector(ADDR_WIDTH-1 downto 0);
			
			init_done: in std_logic;
			locked_out : out std_logic;
			
			we_n, cas_n, ras_n: out std_logic;								
			addr_bank: out std_logic_vector(1 downto 0);					
			addr: out std_logic_vector(ADDR_WIDTH-1 downto 0)
			
	 );
end multiplexer;

architecture Behavioral of multiplexer is

begin
	process(init_done, we_n_a, cas_n_a, ras_n_a, addr_bank_a, we_n_b, cas_n_b, ras_n_b, addr_bank_b)
	begin
		if(init_done = '0') then
			we_n <= we_n_a;
			cas_n <= cas_n_a;
			ras_n <= ras_n_a;
			addr_bank <= addr_bank_a;
			addr <= addr_a;
		elsif(init_done = '1') then
			we_n <= we_n_b;
			cas_n <= cas_n_b;
			ras_n <= ras_n_b;
			addr_bank <= addr_bank_b;
			addr <= addr_b;
		end if;
	end process;
	locked_out <= init_done;
end Behavioral;

