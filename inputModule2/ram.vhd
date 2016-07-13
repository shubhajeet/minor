----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:03:29 06/13/2016 
-- Design Name: 
-- Module Name:    dual_port_ram_sync - Behavioral 
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

entity dual_port_ram_sync is
	generic(ADDR_WIDTH :integer := 9;
				DATA_WIDTH:integer := 4);

    Port ( clk : in  STD_LOGIC;
           we : in  STD_LOGIC;
			  addr_a : in  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
           addr_b : in  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
           din_a : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           dout_a : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           dout_b : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0));
			 
end dual_port_ram_sync;

architecture Behavioral of dual_port_ram_sync is

	type ram_type is array(0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
	signal ram:ram_type;
	signal addr_a_reg, addr_b_reg: std_logic_vector(ADDR_WIDTH-1 downto 0);
	
begin
	process(clk)
	begin
		if(clk'event and clk = '1') then
			if(we = '1') then
				ram(to_integer(unsigned(addr_a))) <= din_a;
			end if;
			addr_a_reg <= addr_a;
			addr_b_reg <= addr_b;
		end if;
	end process;
	dout_a <= ram(to_integer(unsigned(addr_a_reg)));
	dout_b <= ram(to_integer(unsigned(addr_b_reg)));

end Behavioral;

