-- Projeto: Alarme com senha predefinida 
--
--
--
--
--

library ieee;
use ieee.std_logic_1164.all;

entity alarme is
    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );
end alarme;

architecture arch of alarme is
	type state_type is (S0, S1, S2, S3);
	signal s_atual, s_prox : state_type;
begin
	-- PROCESS DA FSM
	process (S, s_atual)
		begin
			case s_atual is
				-- Define a saida desse estado e as condicoes para ir para o proximo
				when S0 =>
					Q <= A;
					if S = '0' then
						s_prox <= S0;
					else
						s_prox <= S1;
					end if;
				when S1 =>
					Q <= B;
					if S = '0' then
						s_prox <= S1;
					else
						s_prox <= S2;
					end if;
				when S2 =>
					Q <= C;
					if S = '0' then
						s_prox <= S2;
					else
						s_prox <= S3;	
					end if;	
				when S3 =>
					Q <= D;
					if S = '0' then
						s_prox <= S3;
					else
						s_prox <= S0;
					end if;
			end case;
		end process;

	-- PROCESS DO CLOCK	
	-- problema do clock eh fazer ele dar certo na placa
	process (CLOCK, RESET)
		begin
			if reset = '1' then
				s_atual <= S0;
			elsif rising_edge(CLOCK) then
				s_atual <= s_prox;
			end if;
		end process;
end arch;