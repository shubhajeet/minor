----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:19:04 05/23/2016 
-- Design Name: 
-- Module Name:    uart_rx - Behavioral 
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

entity uart_rx is

    generic(DB_BIT:integer:=8;
				SB_TICK:integer:=16);

    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (7 downto 0);
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
           en_clk : in  STD_LOGIC;
           rx_done : out  STD_LOGIC);
end uart_rx;

architecture Behavioral of uart_rx is
--add component 
component mod_m_Counter 
   generic(
	   N:integer:=8; ------------------log2(M) Registers
		M:integer:=163);
	port(   clk      : in  STD_LOGIC;
           reset    : in  STD_LOGIC;
           max_tick : out  STD_LOGIC);
end component;			  
---------------------------------------------------------------------------------------------------------
  signal enable:std_logic;
  type state is (idle,start, data , stop);
  signal state_next, state_reg: state;
  signal   s_reg  ,  s_next   :  unsigned (3 downto  0) ; 
  signal   n_reg  ,  n_next  :  unsigned  ( 2   downto  0) ; 
  signal   b_reg  ,  b_next  :  std_logic_vector( 7   downto  0) ; 
  
begin
  baudRateGenerator:mod_m_Counter
         generic map( N =>8,M =>163)
	        port map(clk => clk,reset =>reset ,max_tick =>en_clk);		
			  
---------------------------------------			  
--   en_clk <= enable;			  
--   process(clk,reset)
--		if   reset = '1'  then 
--		state_reg   <=  idle ;  
--		s_reg   		<=  ( others = > '0')  ; 
--		n_reg  		<=  ( others = > '0' ) ;  
--		b_reg  		<=  ( others = > '0' ) ;  
--	
--		elsif   ( clk'event   and  clk = '1')   then 
--			state_reg   <=  state_next ;
--			s_reg   		<=  s_next ;  
--			n_reg  		<=  n_next ;  
--			b_reg  		<=  b_next ;  
--		end if;

	--	end  process ;  
	
	
	

   

end Behavioral;

