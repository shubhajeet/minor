
-- VHDL Instantiation Created from source file ledcontroller.vhd -- 11:59:55 06/10/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ledcontroller
	PORT(
		sw : IN std_logic_vector(3 downto 0);          
		led : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_ledcontroller: ledcontroller PORT MAP(
		sw => ,
		led => 
	);


