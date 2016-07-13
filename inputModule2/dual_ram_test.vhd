--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:14:44 06/27/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/uart0.0/uart0.1/dual_ram_test.vhd
-- Project Name:  uart0.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_sequencer
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
 
ENTITY dual_ram_test IS
END dual_ram_test;
 
ARCHITECTURE behavior OF dual_ram_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram_sequencer
    PORT(
         clk : IN  std_logic;
         we : IN  std_logic;
         reset : IN  std_logic;
         rd_uart : OUT  std_logic;
         block_read : OUT  std_logic;
			write_addr_out: out STD_LOGIC_VECTOR(8 downto 0);

         addr_b : IN  std_logic_vector(8 downto 0);
         din_a : IN  std_logic_vector(3 downto 0);
         dout_a : OUT  std_logic_vector(3 downto 0);
         dout_b : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal we : std_logic := '0';
   signal reset : std_logic := '0';
   signal addr_b : std_logic_vector(8 downto 0) := (others => '0');
   signal din_a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal rd_uart : std_logic;
   signal block_read : std_logic;
   signal dout_a : std_logic_vector(3 downto 0);
   signal dout_b : std_logic_vector(3 downto 0);
	signal write_addr_out: STD_LOGIC_VECTOR(8 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_sequencer PORT MAP (
          clk => clk,
          we => we,
          reset => reset,
          rd_uart => rd_uart,
          block_read => block_read,
          addr_b => addr_b,
          din_a => din_a,
          dout_a => dout_a,
			 write_addr_out => write_addr_out,
          dout_b => dout_b
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
		din_a <= "1101";
		we <= '1';
		 -- insert stimulus here 

      wait;
   end process;

END;
