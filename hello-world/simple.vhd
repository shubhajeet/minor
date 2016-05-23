----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:37 05/18/2016 
-- Design Name: 
-- Module Name:    simple - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity simple is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end simple;

architecture Behavioral of simple is

begin
led(0) <= sw(0) and sw(1);
	led(1) <= sw(0) or sw(1);
	led(2) <= sw(0) xor sw(1);
	led(3) <= sw(0) nor sw(1);
	
	led(7 downto 4) <= sw(3 downto 0);

end Behavioral;

