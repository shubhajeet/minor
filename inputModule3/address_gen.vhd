----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:48:37 06/20/2016 
-- Design Name: 
-- Module Name:    address_sequencer - Behavioral 
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

entity address_sequencer is
	generic(ADDR_WIDTH :integer := 9);
	
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           we : in  STD_LOGIC;
			  rd_uart: out std_logic;
			  			  block_read_out : out STD_LOGIC;

			  block_read: out std_logic;
			  rd_uart_out : out STD_LOGIC;
           write_addr : out  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
			  write_addr_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0));
end address_sequencer;

architecture Behavioral of address_sequencer is

signal addr_reg, addr_next, addr_succ: std_logic_vector(ADDR_WIDTH - 1 downto 0);
signal addr_count_reg, addr_count_next: unsigned(ADDR_WIDTH-1 downto 0);

constant addr_count_max: unsigned(ADDR_WIDTH-1 downto 0) := "1001110000111";		--number of pixels
--constant addr_count_max: unsigned(ADDR_WIDTH-1 downto 0) := "000000010";
--constant addr_count_max: integer:= 400;

 signal rx_read_finished_reg, rx_read_finished_next: std_logic;
begin
	
	--register update
	process(clk, reset)
	begin
		if(reset = '1') then
		addr_reg <= (others => '0');
		addr_count_reg <= (others => '0');
	--	rx_read_finished <= '0';
		
		elsif(clk'event and clk = '1') then
		addr_reg <= addr_next;
		addr_count_reg <= addr_count_next;
		rx_read_finished_reg <= rx_read_finished_next;
		end if;
	end process;
	
	--data path
	addr_succ <= std_logic_vector(unsigned(addr_reg) + 1);
	rx_read_finished_next <= '1' when addr_count_next =  addr_count_max else
								'0';

	--control
	process(we, clk, rx_read_finished_next)
	begin
		if(we = '1') then
			if(rx_read_finished_next = '1') then
				addr_next <= (others => '0');
			else
				addr_next <= addr_succ;
			end if;
		elsif(we = '0') then
			addr_next <= addr_reg;
		end if;
	end process;
	
	process(rx_read_finished_next, addr_count_reg, we)
	begin
		if(we = '1') then
			if(addr_count_reg = addr_count_max) then
				addr_count_next <= (others => '0');
			else
			addr_count_next <= addr_count_reg + 1;
			end if;
		else
			addr_count_next <= addr_count_reg;
		end if;
	end process;
	

	rd_uart <= we;
	block_read <= rx_read_finished_reg;
	block_read_out <= rx_read_finished_reg;
	write_addr <= addr_reg;
	rd_uart_out <= we;
	write_addr_out <= addr_reg;

end Behavioral;

