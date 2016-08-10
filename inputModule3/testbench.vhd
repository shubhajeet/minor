--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:53:55 06/27/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/uart0.0/uart0.1/testbench.vhd
-- Project Name:  uart0.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mem_sync_buf
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
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mem_sync_buf
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         we : IN  std_logic;
         data_in : IN  std_logic_vector(3 downto 0);
         dout_a : OUT  std_logic_vector(3 downto 0);
         dout_b : OUT  std_logic_vector(3 downto 0);
         hsync : OUT  std_logic;
         vsync : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal we : std_logic := '0';
   signal data_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dout_a : std_logic_vector(3 downto 0);
   signal dout_b : std_logic_vector(3 downto 0);
   signal hsync : std_logic;
   signal vsync : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mem_sync_buf PORT MAP (
          clk => clk,
          reset => reset,
          we => we,
          data_in => data_in,
          dout_a => dout_a,
         dout_b => dout_b,
          hsync => hsync,
          vsync => vsync
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
		data_in <= "1101";

      wait;
   end process;

END;
