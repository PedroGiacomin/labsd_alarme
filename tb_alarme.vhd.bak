library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_pseudo_mux is
end tb_pseudo_mux;

architecture teste of tb_pseudo_mux is


component pseudo_mux is

    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );
	
end component;

signal S, A, B, C, D, Q : std_logic;
signal CLOCK : std_logic := '0';
signal RESET : std_logic := '0';

begin
instancia_pseudo_mux: pseudo_mux port map(
	RESET=>RESET, CLOCK=>CLOCK, S=>S, A=>A, B=>B, C=>C, D=>D, Q=>Q 
);
	A <= '0';
	B <= '1';
	C <= '0';
	D <= '1';
	S <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 50 ns, '1' after 60 ns;
	CLOCK <= not CLOCK after 5 ns; 
	RESET <=  '1' after 70 ns, '0' after 80 ns;
end teste;