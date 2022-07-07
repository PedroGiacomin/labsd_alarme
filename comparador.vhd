library ieee;
use ieee.std_logic_1164.all;

entity comparador is
	port(
		senha_in	:in	std_logic_vector(3 downto 0);
		senha_correta_out	:	out std_logic
	);
end comparador;

architecture RTL of comparador is

	constant senha_pre : std_logic_vector(3 downto 0)  	:= "1011";
	begin
		senha_correta_out<= '1' when senha_in = senha_pre else '0';
	
end RTL;