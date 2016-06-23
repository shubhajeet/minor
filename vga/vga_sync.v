library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity vga_sync is
	port(
		clk, reset: in std_logic;
		hysnc, vysnc: out std_logic;
		video_on, p_tick: out std_logic;
		pixel_x, pixel_y: out std_logic_vector (9 downto 0)
		);
end vga_sync;

