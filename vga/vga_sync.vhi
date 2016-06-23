
-- VHDL Instantiation Created from source file vga_sync.vhd -- 18:35:31 06/23/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT vga_sync
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		hsync : OUT std_logic;
		vsync : OUT std_logic;
		video_on : OUT std_logic;
		p_tick : OUT std_logic;
		pixel_x : OUT std_logic_vector(9 downto 0);
		pixel_y : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_vga_sync: vga_sync PORT MAP(
		clk => ,
		reset => ,
		hsync => ,
		vsync => ,
		video_on => ,
		p_tick => ,
		pixel_x => ,
		pixel_y => 
	);


