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
        enter, intrusao 	: in    std_logic; -- sinais de entrada externos
        disparo, ativado	: out   std_logic;  -- sinais de saida externos
		state_flag			: out   std_logic_vector(2 downto 0)	
	 );
end component;

    -- Declaracao dos sinais usados no tb
    signal senha_in  : std_logic_vector(3 downto 0);
    signal enter_in : std_logic;
    signal intrusao_in : std_logic;
    signal disparo_out, ativado_out : std_logic;
    signal clk : std_logic;
    signal rst : std_logic;
    signal state_flag_out : std_logic_vector(2 downto 0);

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
    port map(enter          =>  enter_in, 
            senha           =>  senha_in, 
            intrusao        =>  intrusao_in, 
            disparo         =>  disparo_out, 
            ativado         =>  ativado_out, 
            CLOCK           =>  clk, 
            RESET           =>  rst, 
            state_flag      =>  state_flag_out);

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
        variable input_vector   :   std_logic_vector(3 downto 0);
	
    begin
        readline(inputs_data_in, linea);    -- le a primeira linha e ignora
        wait until falling_edge(clk);       -- espera a borda de descida do clock
        while not endfile(inputs_data_in) loop
                    readline(inputs_data_in, linea);   -- guarda a linha na var 'linea'
                    read(linea,input);   -- le o bit do enter
                    enter_in <= input; 
                    read(linea,input_vector);   -- le o bit do senha_correta
                    senha_in <= input_vector; 
                    read(linea,input);   -- le o bit da intrusao
                    intrusao_in <= input; 
			    wait for PERIOD;    -- espera um periodo de clock antes de ler outra linha
        end loop;
	end process read_inputs_data_in;	
    
----------------------------------------------------------------------------------
------ processo para escrever os dados de saida no arquivo .txt
------------------------------------------------------------------------------------   
   
write_outputs:process
	    variable linea  : line;
        variable output :   std_logic;
		variable output_vector : std_logic_vector(2 downto 0);  
	begin
        write(linea,string'("#ativado disparo state_flag"));
        writeline(outputs,linea);
	    wait until clk ='0';
		while true loop
				output := ativado_out;
				write(linea,output);
                output := disparo_out;
				write(linea,output,right, 15);
                output_vector := state_flag_out;
				write(linea,output_vector,right, 15);
				writeline(outputs,linea);
			wait for PERIOD;
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