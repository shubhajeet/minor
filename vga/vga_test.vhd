-- Company: 
-- Engineer:
--
-- Create Date:   06:43:32 06/23/2016
-- Design Name:   
-- Module Name:   /media/sujit/Windows/Users/sujit/Projects/minor/vga/vga_test.vhd
-- Project Name:  vga
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
 
ENTITY vga_test IS
	port (
		clk, reset: in STD_LOGIC;
		sw: in std_logic_vector(2 downto 0);
		hsync, vsync: out STD_LOGIC;
		--	  h_count_out: out STD_LOGIC_VECTOR(9 downto 0);
		--	  v_count_out: out STD_LOGIC_VECTOR(9 downto 0);
		rgb: out std_logic_vector(2 downto 0)
		);
END vga_test;
 
ARCHITECTURE behavior OF vga_test IS 
	signal rgb_reg: std_logic_vector(2 downto 0);
	signal video_on: std_logic;
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_sync
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         video_on : OUT  std_logic;
         p_tick : OUT  std_logic;
			--			  h_count_out: out STD_LOGIC_VECTOR(9 downto 0);
			--  v_count_out: out STD_LOGIC_VECTOR(9 downto 0);
         pixel_x : OUT  std_logic_vector(9 downto 0);
         pixel_y : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   vga_sync_unit: vga_sync PORT MAP (
          clk => clk,
          reset => reset,
          hsync => hsync,
          vsync => vsync,
          video_on => video_on,
		--	 h_count_out => h_count_out,
		--	 v_count_out => v_count_out,
          p_tick => open,
          pixel_x => open,
          pixel_y => open
        );

	process(clk,reset)
	begin
		if reset = '1' then
			rgb_reg <= (others => '0');
		elsif (clk'event and clk='1') then
			rgb_reg <= sw;
		end if;

   end process;
	rgb <= rgb_reg when video_on = '1' else "000";
end behavior;
