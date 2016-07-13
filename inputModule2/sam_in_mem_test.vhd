--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:10:29 06/29/2016
-- Design Name:   
-- Module Name:   C:/Users/user/FPGA/uart0.0/inputModule2/sam_in_mem_test.vhd
-- Project Name:  inputModule2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sameer_in_mem
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
library std;
use std.textio.all;

 
ENTITY sam_in_mem_test IS
END sam_in_mem_test;
 
ARCHITECTURE behavior OF sam_in_mem_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sameer_in_mem
		    Port ( rx_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  hsync, vsync, enable_out: out std_logic;
			  rd_uart_out, flag_out: out STD_LOGIC;
			  block_read_out: out STD_LOGIC;
			  						  read_addr_out: out std_logic_vector(8 downto 0);						  

			  			  write_addr_out : out  STD_LOGIC_VECTOR (8 downto 0);
		--	  addr_b: in STD_LOGIC_VECTOR(8 downto 0);
           data_out : out  STD_LOGIC_VECTOR (2 downto 0));  
    END COMPONENT;
    

   --Inputs
   signal rx_in : std_logic;
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
  -- signal addr_b : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal block_read_out : std_logic;
   signal data_out : std_logic_vector(2 downto 0);
		signal rd_uart_out, flag_out: STD_LOGIC;
signal write_addr_out: STD_LOGIC_VECTOR (8 downto 0);
   -- Clock period definitions
   constant clk_period : time := 20 ns;
 	constant DATA_LENGTH : integer := 64;
	signal dataread : std_logic_vector(DATA_LENGTH -1 downto 0);
	signal hsync, vsync, enable_out: std_logic;
	signal read_addr_out: std_logic_vector(8 downto 0);						  


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sameer_in_mem PORT MAP (
          rx_in => rx_in,
          clk => clk,
          reset => reset,
          block_read_out => block_read_out,
       --   addr_b => addr_b,
			 hsync => hsync, 
			 vsync => vsync, 
			 enable_out => enable_out,
			 rd_uart_out => rd_uart_out,
			 flag_out => flag_out,
			 read_addr_out => read_addr_out,
			 write_addr_out => write_addr_out,
          data_out => data_out
        );


	reading: process
	
		file file_pointer: text is in "read.txt";
		variable inline: line;
		variable dataread1 : string(1 to DATA_LENGTH);
		variable char: character;
		variable i: integer := 0;
		
		begin
		--	wait until clk = '1' and clk'event;
			--file_open(file_pointer, "read.txt", READ_MODE);
			while (not endfile(file_pointer)) loop
				readline(file_pointer, inline);
				read(inline, dataread1);
			--dataread <=	dataread1;
			end loop;
			
			for i in 0 to DATA_LENGTH -1 loop
				char := dataread1(i+1);
				if char = '0' then
					dataread(DATA_LENGTH -1 - i) <= '0';
				elsif char = '1' then
					dataread(DATA_LENGTH -1 - i) <= '1';
				end if;
			end loop;
		--	file_close(file_pointer);
		wait;
		end process reading;
		
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
		reset <= '1';
		wait for clk_period;
		reset <= '0';	
	wait for clk_period;	
	

	for i in 0 to (DATA_LENGTH - 1) loop
		rx_in <= dataread(DATA_LENGTH - 1 - i);
		--wait for clk_period;
		wait for clk_period*2604;				--2604.1667
	end loop;	
   -- insert stimulus here 

      wait;
   end process;

END;
