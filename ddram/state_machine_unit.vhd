----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:24 06/30/2016 
-- Design Name: 
-- Module Name:    intialS - Behavioral 
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

entity state_mech is
	port(
			clk, reset : in std_logic;
			ck, ck_n, cke, cs_n : out std_logic;
			dqs_l, dqs_u : inout std_logic;
			we_n, cas_n, ras_n: out std_logic;
			addr_bank: out std_logic_vector(1 downto 0);
			addr: inout std_logic_vector(12 downto 0);
			count_out: out std_logic_vector(13 downto 0);
			data : inout std_logic_vector(15 downto 0)
			);
end state_mech;

architecture Behavioral of state_mech is

	type signal_state is (idle, counting, precharge1, nop_state1, wait_state1, mode_reg_state1, nop_state2, wait_state2,
			mode_reg_state2, nop_state3, wait_state3, precharge2, nop_state4, wait_state4, auto_refresh, nop_state5,
			wait_state5, wait_state6, wait_state7, wait_state8, auto_refresh2, nop_state6,
			wait_state9, wait_state10, wait_state11, wait_state12, mode_reg_state3, nop_state7, wait_state13, stop);
			
			
	signal state_reg, state_next: signal_state;
	signal n_count_reg, n_count_next: unsigned(13 downto 0);
	
	constant TWOUS: integer:= 10010;

begin

	ck <= clk;
	ck_n <= not clk;
	cs_n <= '0';
	
	process(clk, reset)
	begin
		if(reset = '1') then
		state_reg <= idle;
		n_count_reg <= (others => '0');
		
		elsif(clk'event and clk = '1') then
		state_reg <= state_next;
		n_count_reg <= n_count_next;
		
		end if;
	end process;
	
	
	process(n_count_reg, state_reg)
	begin
	
	state_next <= state_reg;
	n_count_next <= n_count_reg;
	
	case state_reg is
	when idle =>
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
		cke <= '0';
		state_next <= counting;
		
		
	when counting =>
		if(n_count_reg = TWOUS-1) then
			n_count_next <= (others => '0');
			state_next <= precharge1;
			cke <= '1';
		else
			n_count_next <= n_count_reg+1;
		end if;
		
	when precharge1 =>
		ras_n <= '0';
		cas_n <= '1';
		we_n <= '0';
		addr <= (others => '1');		--A10 high implies precharge all banks
		state_next <= nop_state1;
		
						--now wait for tRP = (15 ns min) waiting till next clock pulse, 40 ns
	when nop_state1 =>				--wait for trp time with a NOP command
		state_next <= wait_state1;
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
	
	when wait_state1 =>
		state_next <= mode_reg_state1;
		
	when mode_reg_state1 =>
		addr_bank <= "01";
		addr <= "0000000100001";		--control word
		ras_n <= '0';
		cas_n <= '0';
		we_n <= '0';
		state_next <= nop_state2;
	
	when nop_state2 =>		--Tmrd = 15 ns min
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
		state_next <= wait_state2;
		
	when wait_state2 =>
		state_next <= mode_reg_state2;
		
	when mode_reg_state2 =>
		addr_bank <= "00";
		addr <= "0000010100001";		--control word, A8 = 1 for DLL reset
		ras_n <= '0';
		cas_n <= '0';
		we_n <= '0';
		state_next <= nop_state3;
		
	when nop_state3 =>
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
		state_next <= wait_state3;
		
	when wait_state3 =>
		state_next <= precharge2;

		when precharge2 =>
		ras_n <= '0';
		cas_n <= '1';
		we_n <= '0';
		addr <= (others => '1');		--A10 high implies precharge all banks
		state_next <= nop_state4;	
	
		when nop_state4 =>
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
		state_next <= wait_state4;
		
		when wait_state4 =>
		state_next <= auto_refresh;
		
		when auto_refresh =>
		cas_n <= '0';
		ras_n <= '0';
		we_n <= '1';
		state_next <= nop_state5;
		
		
		when nop_state5 =>
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
		state_next <= wait_state5;
		
		when wait_state5 =>		--wait for TRfc = 75 ns min so 5 clk cycles
			state_next <= wait_state6;
		
		when wait_state6 =>
			state_next <= wait_state7;
			
		when wait_state7 =>
			state_next <= wait_state8;
		
		when wait_state8 =>
			state_next <= auto_refresh2;
			
		when auto_refresh2 =>
		cas_n <= '0';
		ras_n <= '0';
		we_n <= '1';
		state_next <= nop_state6;
		
		when nop_state6 =>
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
		state_next <= wait_state9;


		when wait_state9 =>		--wait for TRfc = 75 ns min so 5 clk cycles
			state_next <= wait_state10;
		
		when wait_state10 =>
			state_next <= wait_state11;
			
		when wait_state11 =>
			state_next <= wait_state12;
		
		when wait_state12 =>
			state_next <= mode_reg_state3;

		when mode_reg_state3 =>
		addr_bank <= "00";
		addr <= "0000010100001";		--control word, A8 = 1 for DLL reset
		ras_n <= '0';
		cas_n <= '0';
		we_n <= '0';
		state_next <= nop_state7;
		
		when nop_state7 =>
		cas_n <= '1';
		ras_n <= '1';
		we_n <= '1';
		state_next <= wait_state13;
		
		when wait_state13 =>
			state_next <= stop;
		
	when stop =>
		addr <= (others => '0');		--end of init
		
	end case;
	end process;

	--output logic

	count_out <= std_logic_vector(n_count_reg);
end Behavioral;

