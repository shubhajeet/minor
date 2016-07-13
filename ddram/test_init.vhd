--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:08:04 06/30/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/ddram/test_init.vhd
-- Project Name:  ddram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: initialS
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
 
ENTITY test_init IS
END test_init;
 
ARCHITECTURE behavior OF test_init IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT state_mech
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ck : OUT  std_logic;
         ck_n : OUT  std_logic;
         cke : OUT  std_logic;
         cs_n : OUT  std_logic;
         dqs_l : INOUT  std_logic;
         dqs_u : INOUT  std_logic;
         we_n : OUT  std_logic;
         cas_n : OUT  std_logic;
         ras_n : OUT  std_logic;
         addr_bank : OUT  std_logic_vector(1 downto 0);
         addr : INOUT  std_logic_vector(12 downto 0);
			count_out : out std_logic_vector(13 downto 0);
         data : INOUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal dqs_l : std_logic;
   signal dqs_u : std_logic;
   signal addr : std_logic_vector(12 downto 0);
   signal data : std_logic_vector(15 downto 0);

 	--Outputs
   signal ck : std_logic;
   signal ck_n : std_logic;
   signal cke : std_logic;
   signal cs_n : std_logic;
   signal we_n : std_logic;
   signal cas_n : std_logic;
   signal ras_n : std_logic;
   signal addr_bank : std_logic_vector(1 downto 0);
	signal count_out : std_logic_vector(13 downto 0);
   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: state_mech PORT MAP (
          clk => clk,
          reset => reset,
          ck => ck,
          ck_n => ck_n,
          cke => cke,
          cs_n => cs_n,
          dqs_l => dqs_l,
          dqs_u => dqs_u,
          we_n => we_n,
          cas_n => cas_n,
          ras_n => ras_n,
          addr_bank => addr_bank,
          addr => addr,
			 count_out => count_out,
          data => data
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
		
--      wait for sys_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
