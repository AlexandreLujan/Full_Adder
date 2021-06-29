LIBRARY work;
USE work.MyPackage.all;

ENTITY TESTBENCH IS
END ENTITY;

ARCHITECTURE RTL OF TESTBENCH IS

	SIGNAL S_VA, S_VB, S_VS: BIT_VECTOR (3 DOWNTO 0);
	SIGNAL S_C_OUT: BIT;
	
BEGIN

    FULL_ADDER_0 : FULL_ADDER
	 PORT MAP (
		VA     => S_VA,
		VB     => S_VB,
		VS     => S_VS,
		FC_OUT => S_C_OUT
	);
	
	S_VA <= "0010" AFTER 0ns, "1111" AFTER 40ns;
	
	S_VB <= "0010" AFTER 0ns, "0001" AFTER 40ns;
			  
		  
END ARCHITECTURE;