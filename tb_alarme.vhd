library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_alarme is
end tb_alarme;

architecture teste of tb_alarme is

component alarme is

    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        senha_correta   	: in    std_logic; -- sinal de senha_correta
        enter, intrusao 	: in    std_logic; -- sinais de entrada externos
        disparo, ativado	: out   std_logic;  -- sinais de saida externos
		  state_flag			: out   std_logic_vector(2 downto 0)
	 );
end component;

signal senha_correta	: std_logic;
signal enter : std_logic := '0';
signal intrusao, disparo, ativado : std_logic;
signal CLOCK : std_logic := '0';
signal RESET : std_logic := '0';
signal state_flag : std_logic_vector(2 downto 0);

begin
instancia_alarme : alarme port map(
	 senha_correta=>senha_correta, enter => enter, intrusao => intrusao, disparo=>disparo, ativado=>ativado, CLOCK=>CLOCK, RESET=>RESET, state_flag=>state_flag
);
	senha_correta <= '0', '1' after 100 ns;
	enter <= not enter after 10 ns; 
	CLOCK <= not CLOCK after 5 ns; 
	RESET <=  '1' after 2 ns, '0' after 3 ns;

end teste;