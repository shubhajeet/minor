--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:19:15 07/01/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/ddram/control_test.vhd
-- Project Name:  ddram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control_sameer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY control_test IS
generic(ADDR_WIDTH: integer := 13; DATA_WIDTH :integer := 16);
END control_test;
 
ARCHITECTURE behavior OF control_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
	 generic(ADDR_WIDTH: integer := 13; DATA_WIDTH :integer := 16);
	 
    PORT(
		clk : in std_logic;
		reset : in std_logic;
		
			clk_en, cs_n : out std_logic;										--clk enable and chip select
			dqs_l, dqs_u : inout std_logic;									--data strobe, lower and upper
			we_n, cas_n, ras_n: out std_logic;								--strobes
			addr_bank: out std_logic_vector(1 downto 0);					--for 4 banks
			addr: inout std_logic_vector(ADDR_WIDTH-1 downto 0);		--13 address lines for RA and 10 for CA
			data : inout std_logic_vector(DATA_WIDTH-1 downto 0);		--Data Lines	
			we : in std_logic;
			
			count_out : out std_logic_vector(13 downto 0);
			locked_out : out std_logic
			
	     );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
	signal we: std_logic;

 	--Outputs
		signal clk_en, cs_n : std_logic;										--clk enable and chip select
		signal dqs_l, dqs_u : std_logic;									--data strobe, lower and upper
		signal we_n, cas_n, ras_n: std_logic;								--strobes
		signal addr_bank: std_logic_vector(1 downto 0);					--for 4 banks
		signal addr: std_logic_vector(ADDR_WIDTH-1 downto 0);		--13 address lines for RA and 10 for CA
		signal data : std_logic_vector(DATA_WIDTH-1 downto 0);		--Data Lines	  
 	
		signal count_out : std_logic_vector(13 downto 0);
		signal locked_out : std_logic;
   -- Clock period definitions
   constant clk_period : time := 20 ns;
   constant clk_0_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit 
		generic map(ADDR_WIDTH => ADDR_WIDTH, DATA_WIDTH => DATA_WIDTH)
		
	PORT MAP (
          clk => clk,
	        reset => reset,
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
				we => we,
				count_out => count_out,
				locked_out => locked_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		wait for clk_period;
		we <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
