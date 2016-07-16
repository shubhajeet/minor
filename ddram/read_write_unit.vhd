----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:30 07/14/2016 
-- Design Name: 
-- Module Name:    read_write_unit - Behavioral 
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

entity read_write_unit is
	generic(ADDR_WIDTH: integer := 13; DATA_WIDTH :integer := 16);

    Port ( 
				--input form DCM
			  clk : in  STD_LOGIC;												--system clock			
           clk_90 : in  STD_LOGIC;											--for command, address and clk_enable, following datasheet
           clk_180 : in  STD_LOGIC;											--phase inverted clock, for double data rate implementation
           reset : in  STD_LOGIC;
			  
			  we : in STD_LOGIC;													--controller function : write enable
			  --output to ram
			we_n, cas_n, ras_n: out std_logic;								--strobes: command signals
			addr_bank: out std_logic_vector(1 downto 0);					--for 4 banks
			addr: out std_logic_vector(ADDR_WIDTH-1 downto 0);		--13 address lines for RA and 10 for CA

			dqs_l, dqs_u : inout std_logic;									--data strobe, lower and upper			
			data : inout std_logic_vector(DATA_WIDTH-1 downto 0)		--Data Lines	  
			  );

end read_write_unit;

architecture Behavioral of read_write_unit is

begin


end Behavioral;

