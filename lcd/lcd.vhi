
-- VHDL Instantiation Created from source file lcd.vhd -- 12:04:08 06/27/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT lcd
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		SF_D : OUT std_logic_vector(3 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		LCD_RW : OUT std_logic;
		SF_CE0 : OUT std_logic;
		LED : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_lcd: lcd PORT MAP(
		clk => ,
		reset => ,
		SF_D => ,
		LCD_E => ,
		LCD_RS => ,
		LCD_RW => ,
		SF_CE0 => ,
		LED => 
	);


