----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:40 06/29/2016 
-- Design Name: 
-- Module Name:    sameer_in_mem - Behavioral 
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

entity sameer_in_mem is
	generic(ADDR_WIDTH :integer := 13;
				DATA_WIDTH:integer := 24;
				DBIT :integer := 8);


    Port ( rx_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  hsync, vsync, enable_out: out std_logic;
			
			rd_uart_out, flag_out: out STD_LOGIC;
			  block_read_out: out STD_LOGIC;
			  	read_addr_out: out std_logic_vector(ADDR_WIDTH-1 downto 0);						  
			  write_addr_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
			 -- addr_b: in STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
			  --led_out:out std_logic_vector(7 downto 0);
			  sw:in std_logic;
           data_out : out  STD_LOGIC_VECTOR (2 downto 0));
end sameer_in_mem;

architecture Behavioral of sameer_in_mem is

component rx_interface is
	generic(DATA_WIDTH: integer := 24; DBIT : integer:= 8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rx_din : in  STD_LOGIC;
           rx_dout : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           rx_full : out  STD_LOGIC;
			  flag_out: out STD_LOGIC;
       rx_done_tick_out: out STD_LOGIC;
		 rd_uart_out: out STD_LOGIC;
		 rd_uart : in  STD_LOGIC
			--  s_tick : in std_logic
			);
end component;


component ram_sequencer is
	generic(ADDR_WIDTH :integer := 13;
				DATA_WIDTH:integer := 24);
				
    Port ( clk : in  STD_LOGIC;
				we : in STD_LOGIC;
           reset : in  STD_LOGIC;
           rd_uart : out  STD_LOGIC; 
			  rd_uart_out : out STD_LOGIC;
			  block_read: out STD_LOGIC;
			  block_read_out : out STD_LOGIC;
			  write_addr_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
			  addr_b : in  STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
           din_a : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           dout_a : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
			  dout_b : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0)
			);
end component;

component sameer_vga is
	generic(ADDR_WIDTH :integer := 13;
				DATA_WIDTH:integer := 24);

    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           dout_rgb : out  STD_LOGIC_VECTOR (2 downto 0);
			  	en : in std_logic;
				enable_out : out STD_LOGIC;
				read_addr_out: out std_logic_vector(ADDR_WIDTH-1 downto 0);						  
			   read_addr: out std_logic_vector(ADDR_WIDTH-1 downto 0); 
	  pixel_x: out std_logic_vector(9 downto 0);
	  pixel_y: out std_logic_vector(9 downto 0);
				sw:in std_logic;
			  data_in: in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
			  );
			  
end component;


signal rx_dout: std_logic_vector(DATA_WIDTH-1 downto 0);
signal we: std_logic;
signal rd_uart : std_logic;
signal block_read:std_logic;
signal addr_ramb: std_logic_vector(ADDR_WIDTH-1 downto 0);
signal dout_ramb: std_logic_vector(DATA_WIDTH-1 downto 0);
begin

	--port mapping
	outputVGA: entity work.sameer_vga
	generic map(DATA_WIDTH => DATA_WIDTH,
					ADDR_WIDTH => ADDR_WIDTH)
					
	port map(
			clk => clk,			--d
			reset => reset,		--d
			hsync => hsync,		--d
			vsync => vsync,		--d
			dout_rgb => data_out,	--d
			en => block_read,			--d
			enable_out => enable_out,	--d
			read_addr => addr_ramb,			--d
			read_addr_out => read_addr_out,
			pixel_x => open,
			pixel_y => open,
			sw=>sw,
			data_in => dout_ramb			--d
	);
	
	
	
	ram_seq: entity work.ram_sequencer
	generic map(DATA_WIDTH => DATA_WIDTH,
					ADDR_WIDTH => ADDR_WIDTH
					)
	port map(
				clk => clk,				--d
				reset => reset,		--d
				din_a => rx_dout,		--d
				we => we,				--d
				rd_uart_out => rd_uart_out,		--d
				rd_uart => rd_uart,			--d
				block_read => block_read,		--d
				block_read_out => block_read_out,
				addr_b => addr_ramb,
				write_addr_out => write_addr_out,		--d
				dout_b => dout_ramb,				--d
				dout_a => open				--d
				);
				
	receiver: entity work.rx_interface
	generic map(DATA_WIDTH => DATA_WIDTH, DBIT => DBIT)
	
	port map
			(
				clk => clk,				--d
				reset => reset,			--d
				rx_din => rx_in,			--d
				rx_dout => rx_dout,		--d
				rx_full => we,				--d
				flag_out => flag_out,		--d
				rx_done_tick_out => open,	--d
				rd_uart => rd_uart			--d
			);

end Behavioral;

