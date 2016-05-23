----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:02:30 05/23/2016 
-- Design Name: 
-- Module Name:    mod_m_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--------------------------------------------------------------------------------------------------
-- Count upto 163 of clock fequency and output 1
--------------------------------------------------------------------------------------------------
entity mod_m_Counter is
    generic(
	   N:integer:=8; ------------------log2(M) Registers
		M:integer:=163
	 );
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           max_tick : out  STD_LOGIC);
end mod_m_Counter;

architecture Behavioral of mod_m_Counter is
   signal r_reg:unsigned(N-1 downto 0);
	signal r_next:unsigned(N-1 downto 0);
begin
  process(clk,reset)
		begin
			if (reset ='1') then
				r_reg<=(others=>'0');
			elsif (clk'event and clk='1') then
				r_reg<=r_next;
			end if; 	
		end	process;
--- Next State Logic
	 r_next <= (others =>'0') when r_reg =(M-1) else  r_reg+1;
--- output 
    max_tick <= '1' when r_reg = (M-1) else '0'; --enable clock signal
	 
end Behavioral;

