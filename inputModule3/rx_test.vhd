--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:47:19 06/29/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/uart0.0/inputModule2/rx_test.vhd
-- Project Name:  inputModule2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rx_interface
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
 
ENTITY rx_test IS
END rx_test;
 
ARCHITECTURE behavior OF rx_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rx_interface
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         rx_din : IN  std_logic;
         rx_dout : OUT  std_logic_vector(7 downto 0);
         rx_full : OUT  std_logic;
         rd_uart : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal rx_din : std_logic;
   signal rd_uart : std_logic := '0';

 	--Outputs
   signal rx_dout : std_logic_vector(7 downto 0);
   signal rx_full : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rx_interface PORT MAP (
          clk => clk,
          reset => reset,
          rx_din => rx_din,
          rx_dout => rx_dout,
          rx_full => rx_full,
          rd_uart => rd_uart
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
      wait for clk_period;
		reset <= '0';
		wait for clk_period;
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		rx_din  <= '0';

		rd_uart <= '0';
		wait for clk_period * 26040;
      -- insert stimulus here 

      wait;
   end process;

END;
