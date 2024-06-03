LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY Adder IS
 GENERIC ( DATA_WIDTH : Integer := 8);
 PORT (
	A,B,Cin: IN STD_LOGIC;
 	Cout,Dout : OUT STD_LOGIC
 );
END Adder;

ARCHITECTURE RTL OF Adder IS
BEGIN
	Dout <= (A xor B) xor Cin;
	Cout <= (A and B) or (A and Cin) or (B and Cin);
END RTL;
 