LIBRARY work;
USE work.MyPackage.all;

ENTITY FULL_ADDER IS
    PORT (
			VA, VB : IN  BIT_VECTOR (3 DOWNTO 0);
			VS     : OUT BIT_VECTOR (3 DOWNTO 0);
			FC_OUT : OUT BIT
		);
END ENTITY;

ARCHITECTURE RTL OF FULL_ADDER IS

	SIGNAL C0, C1, C2 : BIT;

BEGIN

	 ADDER_0 : ADDER 
	 PORT MAP(
		  A     => VA(0),
		  B     => VB(0), 
        C_IN  => '0',
		  C_OUT => C0,
		  S     => VS(0)
	 );
	 
	 ADDER_1 : ADDER 
	 PORT MAP(
		  A     => VA(1),
		  B     => VB(1), 
        C_IN  => C0,
		  C_OUT => C1,
		  S     => VS(1)
	 );
	 
	 ADDER_2 : ADDER 
	 PORT MAP(
		  A     => VA(2),
		  B     => VB(2), 
        C_IN  => C1,
		  C_OUT => C2,
		  S     => VS(2)
	 );
	 
	 ADDER_3 : ADDER 
	 PORT MAP(
		  A     => VA(3),
		  B     => VB(3), 
        C_IN  => C2,
		  C_OUT => FC_OUT,
		  S     => VS(3)
	 );
	 
   
END ARCHITECTURE;