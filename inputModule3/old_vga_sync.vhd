----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:02 06/17/2016 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
  use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_sync_old is
	generic(ADDR_WIDTH: integer:= 10);
	
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  
			  en : in std_logic;
			  
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           video_on : out  STD_LOGIC;
			 
			 enable_out: out STD_LOGIC;		--ch
	--		  addr_read_out: out STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);		--change
			  addr_read: out STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0)
			  );
end vga_sync_old;

architecture Behavioral of vga_sync_old is

--	--parameters
--	constant HD: integer := 640;
--	constant HF: integer := 16;
--	constant HB: integer := 48;
--	constant HR: integer := 96;
--	
--	constant VD: integer := 480;
--	constant VF: integer := 10;
--	constant VB: integer := 33;
--	constant VR: integer := 2;
	
	--parameters
	constant HD: integer := 7;
	constant HF: integer := 1;
	constant HB: integer := 1;
	constant HR: integer := 1;
	
	constant VD: integer := 2;
	constant VF: integer := 1;
	constant VB: integer := 1;
	constant VR: integer := 1;	
	
	
	--mod -2 counter
	signal mod2_reg, mod2_next: std_logic;
	--sync counters
	signal v_count_reg, v_count_next: unsigned(ADDR_WIDTH-1 downto 0);
	signal h_count_reg, h_count_next: unsigned(ADDR_WIDTH-1 downto 0);
	signal addr_count_reg, addr_count_next: unsigned(ADDR_WIDTH-1 downto 0);	
	--output buffers
	signal v_sync_reg, h_sync_reg: std_logic;
	signal v_sync_next, h_sync_next: std_logic;
	--status signal
	signal h_end, v_end, pixel_tick: std_logic;
	signal enable: std_logic;
begin
	--registers
	process(clk, reset)
	begin
		if(reset = '1') then
			mod2_reg <= '0';
			v_count_reg <= (others => '0');
			h_count_reg <= (others => '0');
			v_sync_reg <= '0';
			h_sync_reg <= '0';
			addr_count_reg <= (others => '0');
			
		elsif(clk'event and clk = '1') then	
			mod2_reg <= mod2_next;
			v_count_reg <= v_count_next;
			h_count_reg <= h_count_next;
			v_sync_reg <= v_sync_next;
			h_sync_reg <= h_sync_next;
			addr_count_reg <= addr_count_next;
		end if;
	end process;
	
	--mod2 circuit to generate 25 MHz enable tick
	mod2_next <= not mod2_reg;
	--25 MHz pixel tick
	
--	enable <= '0' when v_end = '1' else
--					'1' when en = '1' or repeat = '1';
		enable <= '1' when en = '1';
	
	pixel_tick <= '1' when mod2_reg = '1' else '0';
	
	--status signal
	h_end <= '1' when h_count_reg = (HD+HF+HB+HR-1) else '0';
	v_end <= '1' when v_count_reg = (VD+VF+VB+VR-1) else '0';
	
	--mod800 horizontal sync counter
	process(h_count_reg, h_end, pixel_tick, enable)
	begin
		if (pixel_tick = '1' and enable = '1') then
			if h_end = '1' then
				h_count_next <= (0=> '1', others => '0');
			else
				h_count_next <= h_count_reg +1;
			end if;
		else
			h_count_next <= h_count_reg;
		end if;
	end process;
		
	--mod525 vertical sync counter
	process(v_count_reg, h_end, v_end, pixel_tick)
	begin
		if (pixel_tick = '1' and h_end = '1' and enable = '1') then
			if v_end = '1' then
				v_count_next <= (others => '0');
			else
				v_count_next <= v_count_reg +1;
			end if;
		else
			v_count_next <= v_count_reg;
		end if;
	end process;

	--address counter
	process(addr_count_reg, pixel_tick)
	begin
		if(pixel_tick = '1' and enable = '1') then
			if((h_count_reg < HD) and (v_count_reg < VD)) then
				addr_count_next <= addr_count_reg + 1;
			elsif((h_count_reg > HD) and (v_count_reg < VD)) then
				addr_count_next <= addr_count_reg;				
			elsif(v_count_reg >= VD) then
				addr_count_next <= (others => '0');
			end if;
		else
			addr_count_next <= addr_count_reg;
		end if;
	end process;


	h_sync_next <= '1' when enable = '1' and (h_count_reg < (HD + HF) or h_count_reg > (HD+HF+HR-1)) else
							'0';
	v_sync_next <= '1' when enable = '1' and (v_count_reg < (VD + VF) or v_count_reg > (VD+VF+VR-1))else
							'0';
						
	video_on <= '1' when (h_count_reg < HD) and (v_count_reg < VD) and enable = '1' else
					'0';
					
	--output signals
	--	addr_read_out <= std_logic_vector(addr_count_reg); --change
	enable_out <= enable;	--ch
		addr_read <= std_logic_vector(addr_count_reg);
		hsync <= h_sync_reg;
		vsync <= v_sync_reg;		
	
end Behavioral;

