-- Projeto: Alarme com senha predefinida 
-- 
--
--
--

library ieee;
use ieee.std_logic_1164.all;

-- Falta implementar o decodificador de senha e acoplar ele na placa

entity alarme is
    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        senha   : in    std_logic_vector(3 downto 0);
        enter, intrusao 	: in    std_logic; -- sinais de entrada externos
        disparo, ativado	: out   std_logic;  -- sinais de saida externos
		state_flag			: out	  std_logic_vector(2 downto 0)	-- flag de estado
    );
end alarme;

architecture arch of alarme is

    component comparador is
        port(
            senha_in	: in	std_logic_vector(3 downto 0);
            senha_correta_out	:	out std_logic
        );
    end component;
	signal senha_correta  :  std_logic; -- sinal de senha_correta

	type state_type is (desativado, senha_armar, ativar, senha_desarmar, disparar, desarmar_disparo);
	signal s_atual, s_prox : state_type;

    begin
    compara_senha   :   comparador  port map (senha_correta_out =>  senha_correta, senha_in => senha);

    -- PROCESS DA FSM
	process (enter, senha_correta, s_atual, intrusao)
		begin
			case s_atual is
				-- Define a saida desse estado e as condicoes para ir para o proximo
				-- S0: Estado 'desativado'
				when desativado =>
					disparo <= '0';
					ativado <= '0';
					state_flag <= "000";
					if enter = '1' then
						s_prox <= senha_armar;
					else
						s_prox <= desativado;
					end if;
					
				-- S1: Estado 'senha_armar'
				when senha_armar =>
					disparo <= '0';
					ativado <= '0';
					state_flag <= "001";
					if (enter = '1') and (senha_correta = '1') then
						s_prox <= ativar;
					elsif (enter = '1' and senha_correta = '0') then
						s_prox <= desativado;
					else 
						s_prox <= senha_armar;
					end if;
				
				-- S2: Estado 'ativar'
				when ativar =>
					disparo <= '0';
					ativado <= '1';
					state_flag <= "010";
					if (enter = '1') then
						s_prox <= senha_desarmar;
					elsif (intrusao = '0' and enter = '0') then
						s_prox <= ativar;
					elsif (intrusao = '1' and enter = '0') then
						s_prox <= disparar;
					end if;
					
				-- S3: Estado 'senha_desarmar'
				when senha_desarmar =>
					disparo <= '0';
					ativado <= '1';
					state_flag <= "011";
					if (enter = '1' and senha_correta = '1') then
						s_prox <= desativado;
					elsif (enter = '1' and senha_correta = '0') then
						s_prox <= ativar;
					else 
						s_prox <= senha_desarmar;
					end if;
					
				-- S4: Estado 'disparar'
				when disparar =>
					disparo <= '1';
					ativado <= '1';
					state_flag <= "100";
					if (enter = '1') then
						s_prox <= desarmar_disparo;
					else
						s_prox <= disparar;
					end if;
					
				-- S5: Estado 'desarma_disparo'
				when desarmar_disparo =>
					disparo <= '1';
					ativado <= '1';
					state_flag <= "101";
					if (enter = '1' and senha_correta = '1') then
						s_prox <= desativado;
					elsif (enter = '1' and senha_correta = '0') then
						s_prox <= disparar;
					else 
						s_prox <= desarmar_disparo;
					end if;
				
			end case;
		end process;

	-- PROCESS DO CLOCK	
	-- problema do clock eh fazer ele dar certo na placa
	process (CLOCK, RESET)
		begin
			-- No reset, volta para o S0 
			if reset = '1' then
				s_atual <= desativado;
			elsif rising_edge(CLOCK) then
				s_atual <= s_prox;
			end if;
		end process;
end arch;