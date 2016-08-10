--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:57:25 07/01/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/uart0.0/inputModule2/sync_test.vhd
-- Project Name:  inputModule2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_sync
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
 
ENTITY sync_test IS
END sync_test;
 
ARCHITECTURE behavior OF sync_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_sync
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         en : IN  std_logic;
         read_addr : OUT  std_logic_vector(8 downto 0);
         pixel_x : OUT  std_logic_vector(9 downto 0);
         pixel_y : OUT  std_logic_vector(9 downto 0);
         bit_count_out : OUT  std_logic_vector(2 downto 0);
         enable_out : OUT  std_logic;
         video_on : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal read_addr : std_logic_vector(8 downto 0);
   signal pixel_x : std_logic_vector(9 downto 0);
   signal pixel_y : std_logic_vector(9 downto 0);
   signal bit_count_out : std_logic_vector(2 downto 0);
   signal enable_out : std_logic;
   signal video_on : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_sync PORT MAP (
          clk => clk,
          reset => reset,
          hsync => hsync,
          vsync => vsync,
          en => en,
          read_addr => read_addr,
          pixel_x => pixel_x,
          pixel_y => pixel_y,
          bit_count_out => bit_count_out,
          enable_out => enable_out,
          video_on => video_on
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
		en <= '0';
		wait for clk_period;
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		
		wait for 2 * clk_period;
		en <= '1';
		wait for clk_period;
		en <= '0';
		wait for clk_period;
      -- insert stimulus here 

      wait;
   end process;

END;
