----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:16:50 06/12/2016 
-- Design Name: 
-- Module Name:    uart_interface - Behavioral 
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

entity uart_interface is
	generic( DATA_WIDTH: integer:= 24; DBIT: integer:= 8 );
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clr_flag : in  STD_LOGIC;
           set_flag : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (DBIT-1 downto 0);
           dout : out  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
			  flag_out : out STD_LOGIC;
			  data_out : out std_logic_vector(DBIT -1 downto 0);
			  count_out : out STD_LOGIC_VECTOR(1 downto 0);
           flag : out  STD_LOGIC);
end uart_interface;

architecture Behavioral of uart_interface is
	signal buf_reg, buf_next: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal flag_reg, flag_next: std_logic;
	signal n_count_reg, n_count_next: unsigned(1 downto 0);		--5 address lines to count 0,1,2
	signal n_count_max : integer := 3;

begin

	--registers
	process(clk, reset)
		begin
		if(reset = '1') then
			buf_reg <= (others => '0');
			flag_reg <= '0';
			n_count_reg <= (others => '0');
		
		elsif(clk'event and clk = '1') then
			buf_reg <= buf_next;
			flag_reg <= flag_next;
			n_count_reg <= n_count_next;
			
		end if;
		end process;
	
	
	--next state logic and all
	process(buf_reg, flag_reg, din, clr_flag, set_flag, clk, n_count_reg)
		begin
		buf_next <= buf_reg;
		flag_next <= flag_reg;
		n_count_next <= n_count_reg;
		
		if(set_flag = '1') then
			buf_next <= buf_reg(15 downto 0) & din;
			if(n_count_reg = n_count_max-1) then
				n_count_next <= (others => '0');
				buf_next <= (others => '0');
				flag_next <= '1';		
			else
				n_count_next <= n_count_reg + 1;
			end if;
			
		elsif(clr_flag = '1') then
			n_count_next <= (others => '0');
			flag_next <= '0';
		end if;	
		end process;
	
	dout <= buf_reg;
	flag <= flag_reg;
	count_out <= std_logic_vector(n_count_reg);
	flag_out <= flag_reg;
	data_out <= din;

end Behavioral;

