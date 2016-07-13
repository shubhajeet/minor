----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:37 07/01/2016 
-- Design Name: 
-- Module Name:    control_sameer - Behavioral 
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

entity control_unit is
generic(ADDR_WIDTH: integer := 13; DATA_WIDTH :integer := 16);
	port(
		clk : in std_logic;		
		reset : in std_logic;
		
			  --output to ram
			clk_en, cs_n : out std_logic;										--clk enable and chip select
			dqs_l, dqs_u : inout std_logic;									--data strobe, lower and upper
			we_n, cas_n, ras_n: out std_logic;								--strobes
			addr_bank: out std_logic_vector(1 downto 0);					--for 4 banks
			addr: inout std_logic_vector(ADDR_WIDTH-1 downto 0);		--13 address lines for RA and 10 for CA
			data : inout std_logic_vector(DATA_WIDTH-1 downto 0);		--Data Lines	

			we : in std_logic;
			--status check
			count_out : out std_logic_vector(13 downto 0);
			locked_out : out std_logic

	);
end control_unit;


architecture Behavioral of control_unit is
signal clk_90, clk_180: std_logic;
signal clk_0, locked: std_logic;

	COMPONENT dcm_clk
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLK90_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		CLK180_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	
component state_init is
	generic(ADDR_WIDTH: integer := 13; DATA_WIDTH :integer := 16);
    Port ( 
				--input form DCM
			  clk : in  STD_LOGIC;
           clk_90 : in  STD_LOGIC;
           clk_180 : in  STD_LOGIC;
			  locked: in std_logic;
           reset : in  STD_LOGIC;
			  
			  we : in std_logic;
			  --output to ram
			clk_en, cs_n : out std_logic;										--clk enable and chip select
			dqs_l, dqs_u : inout std_logic;									--data strobe, lower and upper
			we_n, cas_n, ras_n: out std_logic;								--strobes
			addr_bank: out std_logic_vector(1 downto 0);					--for 4 banks
			addr: inout std_logic_vector(ADDR_WIDTH-1 downto 0);		--13 address lines for RA and 10 for CA
			data : inout std_logic_vector(DATA_WIDTH-1 downto 0);		--Data Lines
			
			count_out : out std_logic_vector(13 downto 0);
			locked_out : out std_logic
			
			  );
end component;



begin

	Inst_dcm_clk: dcm_clk PORT MAP(
		CLKIN_IN => clk,
		RST_IN => '0',
		CLK0_OUT => clk_0,
		CLK90_OUT => clk_90,
		CLK180_OUT => clk_180,
		LOCKED_OUT => locked
	);
	
	Inst_state_init: entity work.state_init 
	generic map(ADDR_WIDTH => ADDR_WIDTH, DATA_WIDTH => DATA_WIDTH)
	
	PORT MAP(
	clk => clk_0,
	clk_90 => clk_90,
	clk_180 => clk_180,
	locked => locked,
	reset => reset,
	we => we,
	
	clk_en => clk_en,
	cs_n => cs_n,
	dqs_l => dqs_l, 
	dqs_u => dqs_u,
	we_n => we_n, 
	cas_n => cas_n,
	ras_n => ras_n, 
	addr_bank => addr_bank, 
	addr => addr, 
	data => data,

	 count_out => count_out,
	 locked_out => locked_out
	);
	
	
	
end Behavioral;

