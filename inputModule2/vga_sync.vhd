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
	generic(ADDR_WIDTH: integer:= 9);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
			  			  en : in std_logic;
						  read_addr: out std_logic_vector(ADDR_WIDTH-1 downto 0);
						  read_addr_out: out std_logic_vector(ADDR_WIDTH-1 downto 0);						  
						  pixel_x: out std_logic_vector(9 downto 0);
						  pixel_y: out std_logic_vector(9 downto 0);
						  bit_count_out : out std_logic_vector(2 downto 0);
				enable_out : out STD_LOGIC;
           video_on : out  STD_LOGIC
			);
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
	
	
--	constant HD: integer := 7;
--	constant HF: integer := 1;
--	constant HB: integer := 1;
--	constant HR: integer := 1;
--	
--	constant VD: integer := 5;
--	constant VF: integer := 1;
--	constant VB: integer := 1;
--	constant VR: integer := 1;
	-- mod -2 counter
	signal mod2_reg, mod2_next: STD_LOGIC;
	-- sync counters
        signal v_count_reg, v_count_next : unsigned(9 downto 0);
        signal h_count_reg, h_count_next : unsigned(9 downto 0);
        -- output buffer
        signal v_sync_reg, h_sync_reg: STD_LOGIC;
		  	signal addr_count_reg, addr_count_next: unsigned(ADDR_WIDTH-1 downto 0);
			signal bit_count_reg, bit_count_next : unsigned(2 downto 0);
			

        signal v_sync_next, h_sync_next: STD_LOGIC;
        -- status signal
        signal h_end, v_end, bit_end, pixel_tick: STD_LOGIC;
        signal enable: std_logic;
		  
		  constant WINDOW_WIDTH: integer := 20;
		  constant WINDOW_HEIGHT: integer := 20;
begin
  -- registers
  process (clk,reset)
  begin
    if reset='1' then
		--enable_reg <= '0';
      mod2_reg <= '0';
      v_count_reg <= ( others => '0');
      h_count_reg <= ( others => '0');
      v_sync_reg <= '0';
      h_sync_reg <= '0';
		bit_count_reg <= (others => '0');
		addr_count_reg <= (others => '0');
    elsif (clk'event and clk = '1') then
      mod2_reg <= mod2_next;
      v_count_reg <= v_count_next;
      h_count_reg <= h_count_next;
		bit_count_reg <= bit_count_next;
      v_sync_reg <= v_sync_next;
      h_sync_reg <= h_sync_next;
		addr_count_reg <= addr_count_next;
    end if;   
  end process;
  -- mod-2 ckt to gn 25Mhz
  mod2_next <= not mod2_reg;
  -- 25 MHz pixel tick
  pixel_tick <= '1' when mod2_reg = '1' else '0';
  -- status
	enable <= '1' when en = '1';

  h_end <=
    '1' when h_count_reg = (HD+HF+HB+HR-1)  else
    '0';

v_end <= '1' when v_count_reg = (VD+VF+VB+VR-1)  else
			'0';
			
bit_end <= '1' when bit_count_reg = "111" else '0';			
			
	process(bit_count_reg, bit_end, pixel_tick, enable)	
	begin
    if (pixel_tick = '1' and enable = '1') then
      if bit_end = '1' then
        bit_count_next <= (others => '0');
      else
        bit_count_next <= bit_count_reg + 1;
      end if;
    else
      bit_count_next <= bit_count_reg;
    end if;
 		
	end process;
			
  process (h_count_reg,h_end,pixel_tick, enable)
  begin
    if (pixel_tick = '1' and enable = '1') then
      if h_end = '1' then
        h_count_next <= (others => '0');
      else
        h_count_next <= h_count_reg + 1;
      end if;
    else
      h_count_next <= h_count_reg;
    end if;
  end process;
  
    process (v_count_reg,v_end,h_end, pixel_tick, enable)
  begin
    if pixel_tick = '1' and h_end = '1' and enable = '1' then
      if v_end = '1' then
        v_count_next <= (others => '0');
      else
        v_count_next <= v_count_reg + 1;
      end if;
    else
      v_count_next <= v_count_reg;
    end if;
  end process;
  
  
  	--address counter
	process(addr_count_reg, pixel_tick, bit_end)
	begin
		if(pixel_tick = '1' and enable = '1' and bit_end = '1') then
			if((h_count_reg < WINDOW_WIDTH) and (v_count_reg < WINDOW_HEIGHT)) then
				addr_count_next <= addr_count_reg + 1;
			elsif((h_count_reg > WINDOW_WIDTH) and (v_count_reg < WINDOW_HEIGHT)) then
				addr_count_next <= addr_count_reg;				
			elsif(v_count_reg >= WINDOW_HEIGHT) then
				addr_count_next <= (others => '0');
			end if;
		else
				addr_count_next <= addr_count_reg;				
		end if;
		
	end process;
	
  
  h_sync_next <= '0' when (h_count_reg >= (HD+HF)) and (h_count_reg <= (HD+HF+HR-1))
                 else '1';
  v_sync_next <= '0' when (v_count_reg >= (VD+VF)) and (v_count_reg <= (VD+VF+VR-1))
                 else '1';
  video_on <= '1' when (h_count_reg < WINDOW_WIDTH) and (v_count_reg < WINDOW_HEIGHT) and enable = '1' else
            '0';
				
  hsync <= h_sync_reg;
  vsync <= v_sync_reg;
  enable_out <= enable;
  read_addr <= std_logic_vector(addr_count_reg);
  read_addr_out <= std_logic_vector(addr_count_reg); 
	pixel_x <= std_logic_vector(h_count_reg);
  pixel_y <= std_logic_vector(v_count_reg);
  bit_count_out <= std_logic_vector(bit_count_reg);
  --p_tick <= pixel_tick;
end Behavioral;
