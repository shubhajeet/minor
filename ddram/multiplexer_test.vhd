--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:31:23 07/16/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/ddram/multiplexer_test.vhd
-- Project Name:  ddram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer
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
 
ENTITY multiplexer_test IS
END multiplexer_test;
 
ARCHITECTURE behavior OF multiplexer_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplexer
    PORT(
         clk : IN  std_logic;
         we_n_a : IN  std_logic;
         cas_n_a : IN  std_logic;
         ras_n_a : IN  std_logic;
         addr_bank_a : IN  std_logic_vector(1 downto 0);
         addr_a : INOUT  std_logic_vector(12 downto 0);
         we_n_b : IN  std_logic;
         cas_n_b : IN  std_logic;
         ras_n_b : IN  std_logic;
         addr_bank_b : IN  std_logic_vector(1 downto 0);
         addr_b : INOUT  std_logic_vector(12 downto 0);
         init_done : IN  std_logic;
         locked_out : OUT  std_logic;
         we_n : OUT  std_logic;
         cas_n : OUT  std_logic;
         ras_n : OUT  std_logic;
         addr_bank : OUT  std_logic_vector(1 downto 0);
         addr : INOUT  std_logic_vector(12 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal we_n_a : std_logic := '0';
   signal cas_n_a : std_logic := '0';
   signal ras_n_a : std_logic := '0';
   signal addr_bank_a : std_logic_vector(1 downto 0) := (others => '0');
   signal we_n_b : std_logic := '0';
   signal cas_n_b : std_logic := '0';
   signal ras_n_b : std_logic := '0';
   signal addr_bank_b : std_logic_vector(1 downto 0) := (others => '0');
   signal init_done : std_logic := '0';

	--BiDirs
   signal addr_a : std_logic_vector(12 downto 0);
   signal addr_b : std_logic_vector(12 downto 0);
   signal addr : std_logic_vector(12 downto 0);

 	--Outputs
   signal locked_out : std_logic;
   signal we_n : std_logic;
   signal cas_n : std_logic;
   signal ras_n : std_logic;
   signal addr_bank : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplexer PORT MAP (
          clk => clk,
          we_n_a => we_n_a,
          cas_n_a => cas_n_a,
          ras_n_a => ras_n_a,
          addr_bank_a => addr_bank_a,
          addr_a => addr_a,
          we_n_b => we_n_b,
          cas_n_b => cas_n_b,
          ras_n_b => ras_n_b,
          addr_bank_b => addr_bank_b,
          addr_b => addr_b,
          init_done => init_done,
          locked_out => locked_out,
          we_n => we_n,
          cas_n => cas_n,
          ras_n => ras_n,
          addr_bank => addr_bank,
          addr => addr
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

      wait for clk_period*10;

		wait until rising_edge(clk);
		
		for i in 1 to 10 loop
		we_n_b <= '1';
		wait for clk_period*2;
		end loop;
		
      -- insert stimulus here 

      wait;
   end process;

END;
