----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:40:36 06/12/2016 
-- Design Name: 
-- Module Name:    rx_interface - Behavioral 
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

entity rx_interface is
	generic(DATA_WIDTH: integer := 24; DBIT : integer:= 8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rx_din : in  STD_LOGIC;
           rx_dout : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           rx_full : out  STD_LOGIC;
			  count_out : out STD_LOGIC_VECTOR(1 downto 0);
			  			  data_out : out std_logic_vector(DBIT -1 downto 0);

			  flag_out: out STD_LOGIC;
       rx_done_tick_out: out STD_LOGIC;
		 rd_uart : in  STD_LOGIC
			--  s_tick : in std_logic
			);
end rx_interface;


architecture Behavioral of rx_interface is

	--component declaration of receiving and interface systems
	 COMPONENT uart_rx
		generic(DBIT : integer := 8; TOT_DBIT: integer := 8; SB_TICK: integer := 16);
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         rx : IN  std_logic;
         s_tick : IN  std_logic;
         rx_done_tick : OUT  std_logic;
			rx_done_tick_out: OUT std_logic;
         dout : OUT  std_logic_vector(DBIT-1 downto 0)
        );
    END COMPONENT;
	 
	 
	 component uart_interface
	 	generic(DATA_WIDTH: integer := 4; DBIT:integer:= 8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clr_flag : in  STD_LOGIC;
           set_flag : in  STD_LOGIC;
			  flag_out : out std_logic;
			  count_out : out STD_LOGIC_VECTOR(1 downto 0);
			  			  data_out : out std_logic_vector(DBIT -1 downto 0);

           din : in  STD_LOGIC_VECTOR (DBIT-1 downto 0);
           dout : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           flag : out  STD_LOGIC);
	 end component;
	 
	 component baud_rate_gen is	
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           max_tick : out  STD_LOGIC);
		end component;

	 --initialize signals for bonding
	 signal rxint_done_tick: std_logic;
	 signal rxint_dout: std_logic_vector(DBIT-1 downto 0);
	 signal rxint_tick: std_logic;
	 

begin

	--port mapping
	uart_receive : entity work.uart_rx
	generic map(DBIT => DBIT)
	
	port map(clk => clk, 
				reset => reset, 
				rx => rx_din, 
				s_tick => rxint_tick, 
				rx_done_tick => rxint_done_tick, 
				rx_done_tick_out => rx_done_tick_out,
				dout=>rxint_dout);
				
	uart_interf: entity work.uart_interface
	generic map(DATA_WIDTH => DATA_WIDTH, DBIT => DBIT)
	port map(clk => clk,
				reset => reset,
				clr_flag => rd_uart,
				set_flag => rxint_done_tick,
				din => rxint_dout,
				count_out => count_out,
				data_out => data_out,
				flag_out => flag_out,
				dout => rx_dout,
				flag => rx_full
				);
				
	brgen: entity work.baud_rate_gen
	port map(clk=>clk,
				reset => reset,
				max_tick =>rxint_tick);

end Behavioral;

