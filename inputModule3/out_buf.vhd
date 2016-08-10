----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:06 06/21/2016 
-- Design Name: 
-- Module Name:    output_buffer - Behavioral 
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

entity output_buffer is
	generic(DATA_WIDTH: integer := 24);
    Port ( 
			  clk: in STD_LOGIC;
			  video_on : in  STD_LOGIC;
           rgb_out : out  STD_LOGIC_VECTOR (2 downto 0);
			  bit_count_out : in std_logic_vector(2 downto 0);
			  sw:in std_logic;
           data_in : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0));
end output_buffer;

architecture Behavioral of output_buffer is

	signal rgb_reg: std_logic_vector(2 downto 0);
begin
	process(sw,video_on, data_in, clk, bit_count_out)
	begin
			 if(video_on = '1') then
				if(bit_count_out = "000") then
					rgb_reg <= data_in(23 downto 21);
				elsif(bit_count_out = "001") then
					rgb_reg <= data_in(20 downto 18);
				elsif(bit_count_out = "010") then
					rgb_reg <= data_in(17 downto 15);
				elsif(bit_count_out = "011") then
					rgb_reg <= data_in(14 downto 12);
				elsif(bit_count_out = "100") then
					rgb_reg <= data_in(11 downto 9);
				elsif(bit_count_out = "101") then
					rgb_reg <= data_in(8 downto 6);
				elsif(bit_count_out = "110") then
					rgb_reg <= data_in(5 downto 3);
				elsif(bit_count_out = "111") then
					rgb_reg <= data_in(2 downto 0) ;
				end if;
			 else
				rgb_reg <= (others => '0');
			 end if;
	end process;
	
	rgb_out <=(others =>'0') when video_on = '0' else 
	         not(rgb_reg) when sw = '1' and video_on = '1'  else 
	         rgb_reg when sw = '0' and video_on = '1' 
				;

end Behavioral;

