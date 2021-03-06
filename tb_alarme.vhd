library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_textio.all;
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
        senha   : in    std_logic_vector(3 downto 0); -- sinal de senha
        botao_enter, botao_intrusao 	: in    std_logic; -- sinais de entrada externos
        disparo, ativado	: out   std_logic;  -- sinais de saida externos
		state_flag			: out   std_logic_vector(5 downto 0)	
	 );
end component;

component clock_divider is
    port(
        clk_in	:   in	std_logic;
        clk_out	:	out std_logic
    );
end component;

    -- Declaracao dos sinais usados no tb
    signal senha_in  : std_logic_vector(3 downto 0);
    signal botao_enter_in : std_logic;
    signal botao_intrusao_in : std_logic;
    signal disparo_out, ativado_out : std_logic;
    signal clk : std_logic;
    signal rst : std_logic;
    signal state_flag_out : std_logic_vector(5 downto 0);

    -- Teste do clock
    signal clk100Hz    :   std_logic;   -- Sinal de clock corrigido   

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
    port map(botao_enter    =>  botao_enter_in, 
            botao_intrusao  =>  botao_intrusao_in, 
            senha           =>  senha_in, 
            disparo         =>  disparo_out, 
            ativado         =>  ativado_out, 
            CLOCK           =>  clk, 
            RESET           =>  rst, 
            state_flag      =>  state_flag_out);

instancia_clk100Hz :   clock_divider port map (clk_in  =>  clk,  clk_out =>  clk100Hz);

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
    
------------------------------------------------------------------------------------
----------------- processo para ler os dados do arquivo data_in.txt
------------------------------------------------------------------------------------
read_inputs_data_in:process
		variable linea : line;
		variable input : std_logic;
        variable v_space    : character;
        variable input_vector   :   std_logic_vector(3 downto 0);
	
    begin
        readline(inputs_data_in, linea);    -- le a primeira linha e ignora
        wait until falling_edge(clk100Hz);         -- espera a borda de descida do clock
        while not endfile(inputs_data_in) loop
                    readline(inputs_data_in, linea);   -- guarda a linha na var 'linea'
                    read(linea,input_vector);   -- le os 4 bits de senha
                    senha_in <= input_vector; 
                    read(linea, v_SPACE);
                    read(linea,input);   -- le o bit do enter
                    botao_enter_in <= input; 
                    read(linea, v_SPACE);
                    read(linea,input);   -- le o bit da intrusao
                    botao_intrusao_in <= input; 
			    wait for 10 ms;    -- Os botoes sao apertados por um periodo de 0,023 s
        end loop;
	end process read_inputs_data_in;	
    
----------------------------------------------------------------------------------
------ processo para escrever os dados de saida no arquivo .txt
------------------------------------------------------------------------------------   
   
write_outputs:process
	    variable linea  : line;
        variable output :   std_logic;
		variable output_vector : std_logic_vector(5 downto 0);  
	begin
        write(linea,string'("ativado disparo state_flag"));
        writeline(outputs,linea);
	    wait until falling_edge(clk100Hz);       -- espera a borda de descida do clock
		while true loop
				output := ativado_out;
				write(linea,output);
                output := disparo_out;
				write(linea,output,right, 10);
                output_vector := state_flag_out;
				write(linea,output_vector,right, 15);
				writeline(outputs,linea);
			wait for 10 ms;
		end loop; 
	end process write_outputs;   	

------------------------------------------------------------------------------------
----------------- processo para gerar o estimulo de reset
------------------------------------------------------------------------------------		
    -- sreset: process
    -- begin
    --     rst <= '1';
    --     -- Espera 4 subidas de clock e 
    --     for i in 1 to 4 loop
    --         wait until rising_edge(clk);
    --     end loop;
    --     rst <= '0'; 
    --     wait;	
    -- end process sreset;

end teste;