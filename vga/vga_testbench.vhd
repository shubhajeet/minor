--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:09:25 06/23/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/vga/vga_testbench.vhd
-- Project Name:  vga
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_test
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
USE ieee.numeric_std.ALL;
 
ENTITY vga_testbench IS
END vga_testbench;
 
ARCHITECTURE behavior OF vga_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_test
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sw : IN  std_logic_vector(2 downto 0);
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
		--				  h_count_out: out STD_LOGIC_VECTOR(9 downto 0);
		--	  v_count_out: out STD_LOGIC_VECTOR(9 downto 0);
         rgb : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sw : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal rgb : std_logic_vector(2 downto 0);
	--signal h_count_out: STD_LOGIC_VECTOR(9 downto 0);
	--signal v_count_out: STD_LOGIC_VECTOR(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_test PORT MAP (
          clk => clk,
          reset => reset,
          sw => sw,
          hsync => hsync,
          vsync => vsync,
			-- h_count_out => h_count_out,
			-- v_count_out => v_count_out,
          rgb => rgb
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
      wait for clk_period;				--reset pulse
		reset <= '0';
		wait for clk_period;
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
