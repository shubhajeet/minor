--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:48:05 05/18/2016
-- Design Name:   
-- Module Name:   C:/Users/sujit/Projects/minor/hello-world/tb_helloworld.vhd
-- Project Name:  hello-world
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: simple
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
 
ENTITY tb_helloworld IS
END tb_helloworld;
 
ARCHITECTURE behavior OF tb_helloworld IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT simple
    PORT(
         sw : IN  std_logic_vector(3 downto 0);
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sw : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal led : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: simple PORT MAP (
          sw => sw,
          led => led
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 

      --wait;
   end process;

END;
