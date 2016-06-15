----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:22 06/10/2016 
-- Design Name: 
-- Module Name:    ledcontroller - Behavioral 
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

entity ledcontroller is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end ledcontroller;

architecture Behavioral of ledcontroller is

begin
	led(3 downto 0) <= sw(3 downto 0);
	led(4) <= sw(0) and sw(1);
	led(5) <= sw(0) or sw(1);
	led(6) <= sw(2) and sw(3);
	led(7) <= sw(2) or sw(3);
	

end Behavioral;

