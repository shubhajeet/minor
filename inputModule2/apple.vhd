----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:46 06/20/2016 
-- Design Name: 
-- Module Name:    ram_sequencer - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram_sequencer is
	generic(ADDR_WIDTH :integer := 9;
				DATA_WIDTH:integer := 4);
				
    Port ( clk : in  STD_LOGIC;
				we : in STD_LOGIC;
           reset : in  STD_LOGIC;
           rd_uart : out  STD_LOGIC; 
			  rd_uart_out: out STD_LOGIC;
			  block_read: out STD_LOGIC;
			  block_read_out : out STD_LOGIC;
			  write_addr_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
			  addr_b : in  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
           din_a : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           dout_a : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
			  dout_b : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0)
			);
end ram_sequencer;

architecture Behavioral of ram_sequencer is

	--ADD COMPONENTS: DUAL_PORT_SYNC_RAM AND ADDRESS_SEQUENCER
	component dual_port_ram_sync is
	generic(ADDR_WIDTH :integer := 9;
				DATA_WIDTH:integer := 4);

    Port ( clk : in  STD_LOGIC;
           we : in  STD_LOGIC;
			
           addr_a : in  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
           addr_b : in  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
           din_a : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           dout_a : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           dout_b : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0));
			 
		end component;
		
	
	component address_sequencer is
	generic(ADDR_WIDTH :integer := 9);
	
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           we : in  STD_LOGIC;
			  rd_uart: out std_logic;
			  	rd_uart_out: out STD_LOGIC;
			  block_read: out std_logic;
			  	block_read_out : out STD_LOGIC;
			  	write_addr_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
           write_addr : out  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0));
	end component;

	signal addr_w:STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
begin

	--port mapping
	dual_ram: entity work.dual_port_ram_sync
	generic map(DATA_WIDTH => DATA_WIDTH,
					ADDR_WIDTH => ADDR_WIDTH
					)
	port map(
				clk => clk,
				we =>	 we,
				addr_a => addr_w, --write_address,
				addr_b => addr_b, --read_address,
				din_a => din_a,
				dout_a => dout_a,
				dout_b => dout_b
				);
				
	address_gen: entity work.address_sequencer
	generic map(ADDR_WIDTH => ADDR_WIDTH)
	
	port map(
				clk => clk,
				reset => reset,
				we => we,
				rd_uart => rd_uart,
				block_read_out => block_read_out,
				rd_uart_out => rd_uart_out,
				write_addr_out => write_addr_out,
				block_read => block_read,
				write_addr => addr_w
				);


end Behavioral;

