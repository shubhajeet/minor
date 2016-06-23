----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:14:43 06/23/2016 
-- Design Name: 
-- Module Name:    vga_sync - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_sync is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           video_on : out  STD_LOGIC;
           p_tick : out  STD_LOGIC;
           pixel_x : out  STD_LOGIC_VECTOR (9 downto 0);
           pixel_y : out  STD_LOGIC_VECTOR (9 downto 0));
end vga_sync;

architecture Behavioral of vga_sync is
	-- VGA 640 by 480 sync parameters
	constant HD: integer := 640;
	constant HF: integer := 16;
	constant HB: integer := 48;
	constant HR: integer := 96;
	constant VD: integer := 480;
	constant VF: integer := 10;
	constant VB: integer := 33;
	constant VR: integer := 2;
	-- mod -2 counter
	signal mod2_reg, mod2_next: STD_LOGIC;
	-- sync counters
        signal v_count_reg, v_count_next : unsigned(9 downto 0);
        signal h_count_reg, h_count_next : unsigned(9 downto 0);
        -- output buffer
        signal v_sync_reg, h_sync_reg: STD_LOGIC;
        signal v_sync_next, h_sync_next: STD_LOGIC;
        -- status signal
        signal h_end, v_end, pixel_tick: STD_LOGIC;
        
begin
  -- registers
  process (clk,reset)
  begin
    if reset='1' then
      mod2_reg <= '0';
      v_count_reg <= ( others => '0');
      h_count_reg <= ( others => '0');
      v_sync_reg <= '0';
      h_sync_reg <= '0';
    elsif (clk'event and clk = '1') then
      mod2_reg <= mod2_next;
      v_count_reg <= v_count_next;
      h_count_reg <= h_count_next;
      v_sync_reg <= v_sync_next;
      h_sync_reg <= h_sync_next;
    end if;   
  end process;
  -- mod-2 ckt to gn 25Mhz
  mod2_next <= not mod2_reg;
  -- 25 MHz pixel tick
  pixel_tick <= '1' when mod2_reg = '1' else '0';
  -- status
  h_end <=
    '1' when h_count_reg = (HD+HF+HB+HR-1)  else
    '0';
  process (h_count_reg,h_end,pixel_tick)
  begin
    if pixel_tick = '1' then
      if h_end = '1' then
        h_count_next <= (others => '0');
      else
        h_count_next <= h_count_reg + 1;
      end if;
    else
      v_count_next <= v_count_reg;
    end if;
  end process;
  h_sync_next <= '1' when (h_count_reg >= (HD+HF)) and (h_count_reg <= (HD+HF+HR-1))
                 else '0';
  v_sync_next <= '1' when (v_count_reg >= (VD+VF)) and (v_count_reg <= (VD+VF+VR-1))
                 else '0';
  video_on <= '1' when (h_count_reg < HD) and (v_count_reg < VD) else
            '0';
  hsync <= h_sync_reg;
  vsync <= v_sync_reg;
  pixel_x <= std_logic_vector(h_count_reg);
  pixel_y <= std_logic_vector(v_count_reg);
  p_tick <= pixel_tick;
end Behavioral;

