--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:20:01 06/27/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/uart0.0/uart0.1/ad_gen_test.vhd
-- Project Name:  uart0.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: address_sequencer
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
 
ENTITY ad_gen_test IS
END ad_gen_test;
 
ARCHITECTURE behavior OF ad_gen_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT address_sequencer
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         we : IN  std_logic;
         rd_uart : OUT  std_logic;
         block_read : OUT  std_logic;
         write_addr : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal we : std_logic := '0';

 	--Outputs
   signal rd_uart : std_logic;
   signal block_read : std_logic;
   signal write_addr : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: address_sequencer PORT MAP (
          clk => clk,
          reset => reset,
          we => we,
          rd_uart => rd_uart,
          block_read => block_read,
          write_addr => write_addr
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
     wait for clk_period*5;
		reset <= '0';
		we <= '0';
		wait for clk_period;
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		
		wait for 2 * clk_period;
		we <= '1';
		wait for clk_period;
	
      -- insert stimulus here 

      wait;
   end process;

END;
