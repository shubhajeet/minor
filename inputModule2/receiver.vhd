----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:28 06/10/2016 
-- Design Name: 
-- Module Name:    uart_rx - arch 
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

entity uart_rx is
	generic(DBIT : integer := 8; TOT_DBIT: integer := 8; SB_TICK: integer := 16);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           s_tick : in  STD_LOGIC;
           rx_done_tick : out  STD_LOGIC;
			  rx_done_tick_out : out STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (DBIT-1 downto 0));
end uart_rx;

architecture arch of uart_rx is

	--type state_type is (idle, start, data, stop, pulse);
		type state_type is (idle, start, data, stop, pulse);
		signal state_reg, state_next: state_type;
		signal s_reg, s_next: unsigned(3 downto 0);	-- to count from 0 to 15, 4 bits required
		signal n_reg, n_next: unsigned(2 downto 0);	-- to count from 0 to 7, only 3 bits required
--		signal tot_reg, tot_next: unsigned(4 downto 0);	--to count form 0 to 23, 5 bits required
		signal b_reg, b_next: std_logic_vector(DBIT-1 downto 0);
		signal ledStart: STD_LOGIC_VECTOR(3 downto 0);
		signal ledStop: STD_LOGIC_VECTOR(3 downto 0);
		signal rx_done_tick_reg, rx_done_tick_next: std_logic;
	--	signal repeat : std_logic;
begin
	--FSMD state and data registers
	process(clk, reset)
		begin
			if(reset = '1') then
			state_reg <= idle;
			s_reg <= (others => '0');
			b_reg <= (others => '0');
			n_reg <= (others => '0');
--			tot_reg <= (others => '0');
			rx_done_tick_reg <= '0';
			
			elsif(clk'event and clk = '1') then
			state_reg <= state_next;
			s_reg <= s_next;
			b_reg <= b_next;
--			c_reg <= c_next;
			n_reg <= n_next;
--			tot_reg <= tot_next;
			rx_done_tick_reg <= rx_done_tick_next;
			
			end if;
		end process;

		--next state logic and data path logic
		process(s_reg, n_reg, b_reg, s_tick, rx, state_reg)
			begin
				state_next <= state_reg;
				s_next <= s_reg;
				n_next <= n_reg;
				b_next <= b_reg;
				--tot_next <= tot_reg;
				
				case state_reg is
					when idle =>
						rx_done_tick_next <= '0';
						ledStart <= (others => '0');
						ledStop <= (others => '1');
						if rx = '0' then		--changed
							ledStart <= (others => '1');
							ledStop <= (others => '0');
							state_next <= start;
							s_next <= (others => '0');
						end if;
						
					when start =>
						if(s_tick = '1') then
							if(s_reg = 7) then
								state_next <= data;
								s_next <= (others => '0');			--reset tick counter after reaching middle of start-bit
								n_next <= (others => '0');			--reset databit counters
						--		tot_next <= (others => '0');		--reset databit counters
							else
								s_next <= s_reg + 1;
							end if;
						end if;	
						
					when data =>
					--	rx_done_tick_next <= '0';
						if(s_tick = '1') then
							if(s_reg = 15) then									--reached middle of databit
								s_next <= (others => '0');						--reset tick counter
								b_next <= rx & b_reg(DBIT-1 downto 1);
								if(n_reg = DBIT -1) then						--if 8 bit has been stored, it can either be EOF or EOB
								--		repeat <= '1';
								--		if(tot_reg = TOT_DBIT-1) then		--hasn't reached EOF(End of Frame), only EOB(End of Byte)
								--		repeat <= '0';
								--		end if;
								--		state_next <= pulse;
										state_next <= stop;
								--		n_next <= (others => '0');
								--		tot_next <= tot_reg + 1;
								else													--8 bit hasn't been stored, so keep adding
									n_next <= n_reg + 1;
								--	tot_next <= tot_reg + 1;
								end if;	
							else														--hasn't reached middle of databit yet
								s_next <= s_reg + 1;
							end if;
						end if;
						
					when stop =>
					--	rx_done_tick_next <= '0';
						if(s_tick = '1') then
							if(s_reg = SB_TICK -1) then
								state_next <= pulse;
							else
								s_next <= s_reg +1;
							end if;				
						end if;
												
					when pulse =>
							rx_done_tick_next <= '1';
							state_next <= idle;
					
				end case;	
			end process;
			
--	repeat_out <= repeat;
--	n_count_out <= std_logic_vector(n_reg);
--	tot_count_out <= std_logic_vector(tot_reg);
	rx_done_tick <= rx_done_tick_reg;
	rx_done_tick_out <= rx_done_tick_reg;
	dout <= b_reg;
end arch;


