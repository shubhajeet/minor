
-- VHDL Instantiation Created from source file dcm_clk.vhd -- 20:29:41 07/01/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dcm_clk
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		CLK90_OUT : OUT std_logic;
		CLK180_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;

	Inst_dcm_clk: dcm_clk PORT MAP(
		CLKIN_IN => ,
		RST_IN => ,
		CLKIN_IBUFG_OUT => ,
		CLK0_OUT => ,
		CLK90_OUT => ,
		CLK180_OUT => ,
		LOCKED_OUT => 
	);


