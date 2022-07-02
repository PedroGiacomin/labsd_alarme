library IEEE;
use IEEE.STD_LOGIC_1164.all;
use std.textio.all;
use ieee.numeric_std.all;

entity tb_alarme is
end tb_alarme;

architecture teste of tb_alarme is

    -- Declaracao da UUT, que no caso eh o alarme de alarme.vhd
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

    -- Declaracao dos sinais usados no tb
    signal senha_correta	: std_logic;
    signal enter : std_logic := '0';
    signal intrusao, disparo, ativado : std_logic;
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal state_flag : std_logic_vector(2 downto 0);

    -- Flags de I/O
    signal read_data_in    : std_logic:='0';
   	signal flag_write      : std_logic:='0';   

    -- Arquivos de texto
   	file   inputs_data_in  : text open read_mode  is "data_in.txt";
   	file   outputs         : text open write_mode is "outputs.txt";

    -- Definicoes do periodo de clock
    constant PERIOD     : time := 20 ns;    -- duracao do periodo
    constant DUTY_CYCLE : real := 0.5;      -- tempo em ON
    constant OFFSET     : time := 5 ns;     -- tempo de inicio

begin
    -- Instancia da UUT, no caso, o alarme de alarme.vhd
instancia_alarme : alarme 
    port map(senha_correta  =>  senha_correta, 
            enter           =>  enter, 
            intrusao        =>  intrusao, 
            disparo         =>  disparo, 
            ativado         =>  ativado, 
            CLOCK           =>  clk, 
            RESET           =>  rst, 
            state_flag      =>  state_flag);

------------------------------------------------------------------------------------
----------------- processo para gerar o sinal de clock 
------------------------------------------------------------------------------------		
    process    -- clock process for clock
    begin
        wait for OFFSET;
        CLOCK_LOOP : loop
            clk <= '0';
            wait for (PERIOD - (PERIOD * DUTY_CYCLE));
            clk <= '1';
            wait for (PERIOD * DUTY_CYCLE);
        end loop CLOCK_LOOP;
    end process;
    
end teste;