----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:17 06/28/2016 
-- Design Name: 
-- Module Name:    sameer_vga - Behavioral 
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

entity sameer_vga is
	generic(ADDR_WIDTH :integer := 13;
				DATA_WIDTH:integer := 24);

    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           dout_rgb : out  STD_LOGIC_VECTOR (2 downto 0);
			  	en : in std_logic;
				enable_out : out STD_LOGIC;
						  read_addr: out std_logic_vector(ADDR_WIDTH-1 downto 0); 
								  read_addr_out: out std_logic_vector(ADDR_WIDTH-1 downto 0);						  
				  
						  pixel_x: out std_logic_vector(9 downto 0);
	  pixel_y: out std_logic_vector(9 downto 0);
	--  bit_count_out : out std_logic_vector(2 downto 0);
				sw:in std_logic;
			  data_in: in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
			  );
end sameer_vga;

architecture Behavioral of sameer_vga is

	signal video_on: std_logic;
	signal bit_count_out: std_logic_vector(2 downto 0);

component output_buffer is
	generic(DATA_WIDTH: integer := 24);
    Port ( 
			  clk: in STD_LOGIC;
			  video_on : in  STD_LOGIC;
			  			  bit_count_out : in std_logic_vector(2 downto 0);
             sw:in std_logic;
           rgb_out : out  STD_LOGIC_VECTOR (2 downto 0);
           data_in : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0));
end component;


component vga_sync is
	generic(ADDR_WIDTH: integer:= 13);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  						  read_addr: out std_logic_vector(ADDR_WIDTH-1 downto 0); 
					pixel_x: out std_logic_vector(9 downto 0);
					  pixel_y: out std_logic_vector(9 downto 0);
					  bit_count_out : out std_logic_vector(2 downto 0);
				
							  read_addr_out: out std_logic_vector(ADDR_WIDTH-1 downto 0);						  
		  			  			  en : in std_logic;
				enable_out : out STD_LOGIC;

           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           video_on : out  STD_LOGIC
			--  addr_read: out STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0)
			  );
end component;
begin

	synchronizer: entity work.vga_sync
	generic map(ADDR_WIDTH => ADDR_WIDTH)			
				
	port map(
			  clk => clk,
           reset => reset,
			  en => en,
			  enable_out => enable_out,
           hsync => hsync,
           vsync => vsync,
			  pixel_x => pixel_x,
			  read_addr_out => read_addr_out,
			  pixel_y => pixel_y,
			  bit_count_out => bit_count_out,
			  read_addr => read_addr,
           video_on => video_on
			--  addr_read => open
			  );
				
	out_buf: entity work.output_buffer
	generic map(DATA_WIDTH => DATA_WIDTH)

	
	port map
			(
				clk => clk,
				video_on => video_on,
				bit_count_out => bit_count_out,
				rgb_out => dout_rgb,
				sw=>sw,
				data_in => data_in
			);

end Behavioral;

