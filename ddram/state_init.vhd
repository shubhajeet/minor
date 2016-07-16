----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:04 07/01/2016 
-- Design Name: 
-- Module Name:    state_init - Behavioral 
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

use IEEE.NUMERIC_STD.ALL;


--signals marked with _out signals are used purely for debugging and testing
--FSM doesn't contain any loops for simplicity, as such number of states is high
--singals marked with _n are of type negative true logic

--timing signals 
-- symbol														min		max		used
--Tck, clock cycle time: 									7.5		13
--Tmrd, load mode reg time:								15						20
--Tras, active to precharge time:						40			120,000
--Trc, active-to active/auto refresh time				65
--Trcd, active to read/write delay time				20
--Trfc, auto refresh command period						75
--Trp, precharge command period							20						40


entity state_init is
	generic(ADDR_WIDTH: integer := 13; DATA_WIDTH :integer := 16);

    Port ( 
				--input form DCM
			  clk : in  STD_LOGIC;												--system clock			
           clk_90 : in  STD_LOGIC;											--for command, address and clk_enable, following datasheet
           clk_180 : in  STD_LOGIC;											--phase inverted clock, for double data rate implementation
			  locked: in std_logic;												--marks start of 90 deg phase shifted clk when 0->1 transition
           reset : in  STD_LOGIC;
			  
--			  we : in STD_LOGIC;													--controller function : write enable
			  --output to ram
			clk_en, cs_n : out std_logic;										--clk enable and chip select
--			dqs_l, dqs_u : inout std_logic;									--data strobe, lower and upper
			we_n, cas_n, ras_n: out std_logic;								--strobes: command signals
			addr_bank: out std_logic_vector(1 downto 0);					--for 4 banks
			addr: out std_logic_vector(ADDR_WIDTH-1 downto 0);		--13 address lines for RA and 10 for CA
			
			
			--check status o/ps
			count_out : out std_logic_vector(13 downto 0);			
			locked_out : out std_logic
			  );
end state_init;

architecture Behavioral of state_init is

	--to sync with clk_90
	signal cas_reg, ras_reg, we_reg, clk_en_reg: std_logic;
	
	--states
	type signal_state is (idle, counting, precharge1, nop_state1, wait_state1, mode_reg_state1, nop_state2,
			mode_reg_state2, nop_state3, precharge2, nop_state4, wait_state4, auto_refresh, nop_state5,
			wait_state5, wait_state6, wait_state7, auto_refresh2, nop_state6,
			wait_state9, wait_state10, wait_state11, active_state, 
			nop_state8, wait_state_stop, stop);

	signal state_reg, state_next: signal_state;
	
	--counters
	signal n_count_reg, n_count_next : unsigned(13 downto 0);
	constant n_count_max : integer := 10010;								--more than 200 us interval in 50 MHz clock
	signal col_count_reg, col_count_next: unsigned(9 downto 0);		--column address counter
	
	--register
	signal locked_reg : std_logic := '0';
	signal addr_reg : std_logic_vector(ADDR_WIDTH-1 downto 0);	
	signal addr_bank_reg: std_logic_vector(1 downto 0);					--for 4 banks	
	signal init_done: std_logic;													--to mark finish of RAM initialization
	
begin

	process(clk, reset)
	begin
		if(reset = '1') then
			state_reg <= idle;
			n_count_reg <= (others => '0');	
			col_count_reg <= (others => '0');
			
		elsif(clk'event and clk = '1') then
			state_reg <= state_next;
			n_count_reg <= n_count_next;
			col_count_reg <= col_count_next;
		end if;
	end process;

	process(clk_90)
	begin
		if(clk_90'event and clk_90 = '1') then
			cas_n <= cas_reg;
			ras_n <= ras_reg;
			we_n <= we_reg;
			addr <= addr_reg;
			clk_en <= clk_en_reg;
			addr_bank <= addr_bank_reg;
		end if;
	end process;
		
		
	--initialization process	
	process(state_reg, locked_reg, addr_reg, n_count_reg)
	begin
		
			state_next <= state_reg;
			n_count_next <= n_count_reg;
			
		case state_reg is
		
			when idle =>
			if(locked_reg = '1') then					--if stable clk output is present, procceed
				cas_reg <= '1';							--NOP state
				ras_reg <= '1';
				we_reg <= '1';
				clk_en_reg <= '0';						--low clk_en
				init_done <= '0';
				state_next <= counting;
			end if;
			
			when counting =>
			if(n_count_reg = n_count_max) then				--after 10010 * 200 ns > 200 us
					n_count_next <= (others => '0');			--reset counter
					clk_en_reg <= '1';							--set clk_en high
					state_next <= precharge1;					
				else
					n_count_next <= n_count_reg+1;
				end if;
			
			when precharge1 =>									--precharge
				ras_reg <= '0';
				cas_reg <= '1';
				we_reg <= '0';
				addr_reg <= (others => '1');		--A10 high implies precharge all banks
				state_next <= nop_state1;	
				
			when nop_state1 =>
				ras_reg <= '1';
				cas_reg <= '1';
				we_reg <= '1';
				state_next <= wait_state1;
				
			when wait_state1 =>							--waited for Trp(min 20) = 40 ns time
				state_next <= mode_reg_state1;	


			when mode_reg_state1 =>
			addr_bank_reg <= "01";				--extended mode to enable DLL in normal drive
			addr_reg <= "0000000000000";		--all 0s, DLL enable should be followed by DLL reset
			ras_reg <= '0';
			cas_reg <= '0';
			we_reg <= '0';
			state_next <= nop_state2;
	
			when nop_state2 =>		
			cas_reg <= '1';
			ras_reg <= '1';
			we_reg <= '1';
			state_next <= mode_reg_state2;	
	
			when mode_reg_state2 =>				--normal/reset DLL operation
			addr_bank_reg <= "00";				--control word, BL = 2, BT = Sequential, CL = 2 for normal operation
			addr_reg <= "0000100100001";		--control word, M8 = 1 for DLL reset
			ras_reg <= '0';						--wait 200 clock cycles until read command is issued
			cas_reg <= '0';
			we_reg <= '0';
			state_next <= nop_state3;
		
			when nop_state3 =>
			cas_reg <= '1';
			ras_reg <= '1';
			we_reg <= '1';
			state_next <= precharge2;
		
			when precharge2 =>
			ras_reg <= '0';
			cas_reg <= '1';
			we_reg <= '0';
			addr_reg <= (others => '1');		--A10 high implies precharge all banks
			state_next <= nop_state4;	
	
			when nop_state4 =>
			cas_reg <= '1';
			ras_reg <= '1';
			we_reg <= '1';
			state_next <= wait_state4;
		
			when wait_state4 =>
			state_next <= auto_refresh;
		
			when auto_refresh =>
			cas_reg <= '0';
			ras_reg <= '0';
			we_reg <= '1';
			state_next <= nop_state5;
		
		
			when nop_state5 =>
			cas_reg <= '1';
			ras_reg <= '1';
			we_reg <= '1';
			state_next <= wait_state5;
		
			when wait_state5 =>		--wait for TRfc = 75 ns min so 5 clk cycles
			state_next <= wait_state6;
		
			when wait_state6 =>
			state_next <= wait_state7;
			
			when wait_state7 =>
			state_next <= auto_refresh2;		
			
			when auto_refresh2 =>
			cas_reg <= '0';
			ras_reg <= '0';
			we_reg <= '1';
			state_next <= nop_state6;
		
			when nop_state6 =>
			cas_reg <= '1';
			ras_reg <= '1';
			we_reg <= '1';
			state_next <= wait_state9;


			when wait_state9 =>		--wait for TRfc = 75 ns min so 5 clk cycles
			state_next <= wait_state10;
		
			when wait_state10 =>
			state_next <= wait_state11;
			
			when wait_state11 =>
			state_next <= active_state;
				
			when active_state=>						--selects row of bank 00 for read write, wait for 20 ns(min)
			cas_reg <= '1';
			ras_reg <= '0';
			we_reg <= '1';
			addr_reg  <= "0000000000000";			--row address
			addr_bank_reg <= "00";
			state_next <= nop_state8;
			
			when nop_state8 =>
			cas_reg <= '1';
			ras_reg <= '1';
			we_reg <= '1';
			state_next <= stop;
	
			when wait_state_stop =>
			init_done <= '1';
			state_next <= stop;
			
			when stop =>
			init_done <= '1';
				
		end case;		
	end process;
		
--	--read/write process	
--	process(init_done, col_count_reg, we)
--	begin
--		col_count_next <= col_count_reg;
--		if(init_done = '1' and we = '1') then
--			if(col_count_reg = "1111111111") then
--				col_count_next <= (others => '0');
--			else
--				col_count_next <= col_count_reg + 1;
--			end if;
--		end if;
--	end process;

--	process(init_done, we, col_count_reg, ras_reg, cas_reg, we_reg, addr_reg, addr_bank_reg)
--	begin
--		if(init_done = '1' and we = '1') then
--			cas_reg <= '0';
--			ras_reg <= '1';
--			we_reg <= '0';			
--			addr_reg  <= std_logic_vector(col_count_reg);			--row address, disable auto precharge
--			addr_bank_reg <= "00";
--			col_count_next <= col_count_reg;
--			
--			if(col_count_reg = "1111111111") then
--				col_count_next <= (others => '0');
--			else
--				col_count_next <= col_count_reg + 1;
--			end if;
--		end if;
--	end process;



	
	--do chip select after clock has settled
	cs_n <= '0' when locked = '1';
	locked_reg <= '1' when locked = '1';

	count_out <= std_logic_vector(n_count_reg);
	locked_out <= init_done;
end Behavioral;