-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/11/2022 22:55:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alarme IS
    PORT (
	reset : IN std_logic;
	CLOCK : IN std_logic;
	senha : IN std_logic_vector(3 DOWNTO 0);
	botao_enter : IN std_logic;
	botao_intrusao : IN std_logic;
	disparo : BUFFER std_logic;
	ativado : BUFFER std_logic;
	state_flag : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END alarme;

-- Design Ports Information
-- disparo	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ativado	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_flag[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_flag[1]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_flag[2]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_flag[3]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_flag[4]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_flag[5]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_intrusao	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_enter	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alarme IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_senha : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_botao_enter : std_logic;
SIGNAL ww_botao_intrusao : std_logic;
SIGNAL ww_disparo : std_logic;
SIGNAL ww_ativado : std_logic;
SIGNAL ww_state_flag : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_clk100Hz|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \disparo~output_o\ : std_logic;
SIGNAL \ativado~output_o\ : std_logic;
SIGNAL \state_flag[0]~output_o\ : std_logic;
SIGNAL \state_flag[1]~output_o\ : std_logic;
SIGNAL \state_flag[2]~output_o\ : std_logic;
SIGNAL \state_flag[3]~output_o\ : std_logic;
SIGNAL \state_flag[4]~output_o\ : std_logic;
SIGNAL \state_flag[5]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~0_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~1\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~2_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~3\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~4_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~5\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~6_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~7\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~8_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter~3_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~9\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~10_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Equal0~1_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~11\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~12_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~13\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~14_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter~2_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~15\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~16_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~17\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~18_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~19\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~20_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~21\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~22_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~23\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~24_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter~4_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~25\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~26_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~27\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~28_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter~5_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~29\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~30_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter~6_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Equal0~3_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Equal0~0_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Equal0~2_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Equal0~4_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~31\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~33\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~34_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter~1_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|Add0~32_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter~0_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|temporal~0_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|temporal~q\ : std_logic;
SIGNAL \instancia_clk100Hz|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \senha[3]~input_o\ : std_logic;
SIGNAL \senha[2]~input_o\ : std_logic;
SIGNAL \senha[0]~input_o\ : std_logic;
SIGNAL \senha[1]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \botao_enter~input_o\ : std_logic;
SIGNAL \last_botao_enter~feeder_combout\ : std_logic;
SIGNAL \last_botao_enter~q\ : std_logic;
SIGNAL \detector_de_borda_enter~0_combout\ : std_logic;
SIGNAL \enter~q\ : std_logic;
SIGNAL \botao_intrusao~input_o\ : std_logic;
SIGNAL \last_botao_intrusao~feeder_combout\ : std_logic;
SIGNAL \last_botao_intrusao~q\ : std_logic;
SIGNAL \detector_de_borda_intrusao~0_combout\ : std_logic;
SIGNAL \intrusao~q\ : std_logic;
SIGNAL \s_atual.senha_desarmar~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_atual.senha_desarmar~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \s_atual.desativado~q\ : std_logic;
SIGNAL \s_atual.senha_armar~0_combout\ : std_logic;
SIGNAL \s_atual.senha_armar~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \s_atual.ativar~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \s_atual.disparar~q\ : std_logic;
SIGNAL \s_atual.desarmar_disparo~q\ : std_logic;
SIGNAL \disparo~2_combout\ : std_logic;
SIGNAL \ativado~2_combout\ : std_logic;
SIGNAL \instancia_clk100Hz|counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ativado~2_combout\ : std_logic;
SIGNAL \ALT_INV_s_atual.desativado~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_CLOCK <= CLOCK;
ww_senha <= senha;
ww_botao_enter <= botao_enter;
ww_botao_intrusao <= botao_intrusao;
disparo <= ww_disparo;
ativado <= ww_ativado;
state_flag <= ww_state_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\instancia_clk100Hz|temporal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \instancia_clk100Hz|temporal~q\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_ativado~2_combout\ <= NOT \ativado~2_combout\;
\ALT_INV_s_atual.desativado~q\ <= NOT \s_atual.desativado~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y37_N2
\disparo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disparo~2_combout\,
	devoe => ww_devoe,
	o => \disparo~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\ativado~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ativado~2_combout\,
	devoe => ww_devoe,
	o => \ativado~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\state_flag[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_atual.desativado~q\,
	devoe => ww_devoe,
	o => \state_flag[0]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\state_flag[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_atual.senha_armar~q\,
	devoe => ww_devoe,
	o => \state_flag[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\state_flag[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_atual.ativar~q\,
	devoe => ww_devoe,
	o => \state_flag[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\state_flag[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_atual.senha_desarmar~q\,
	devoe => ww_devoe,
	o => \state_flag[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\state_flag[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_atual.disparar~q\,
	devoe => ww_devoe,
	o => \state_flag[4]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\state_flag[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_atual.desarmar_disparo~q\,
	devoe => ww_devoe,
	o => \state_flag[5]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLOCK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G3
\CLOCK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y2_N14
\instancia_clk100Hz|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~0_combout\ = \instancia_clk100Hz|counter\(0) $ (VCC)
-- \instancia_clk100Hz|Add0~1\ = CARRY(\instancia_clk100Hz|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(0),
	datad => VCC,
	combout => \instancia_clk100Hz|Add0~0_combout\,
	cout => \instancia_clk100Hz|Add0~1\);

-- Location: FF_X45_Y2_N15
\instancia_clk100Hz|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(0));

-- Location: LCCOMB_X45_Y2_N16
\instancia_clk100Hz|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~2_combout\ = (\instancia_clk100Hz|counter\(1) & (!\instancia_clk100Hz|Add0~1\)) # (!\instancia_clk100Hz|counter\(1) & ((\instancia_clk100Hz|Add0~1\) # (GND)))
-- \instancia_clk100Hz|Add0~3\ = CARRY((!\instancia_clk100Hz|Add0~1\) # (!\instancia_clk100Hz|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(1),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~1\,
	combout => \instancia_clk100Hz|Add0~2_combout\,
	cout => \instancia_clk100Hz|Add0~3\);

-- Location: FF_X45_Y2_N17
\instancia_clk100Hz|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(1));

-- Location: LCCOMB_X45_Y2_N18
\instancia_clk100Hz|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~4_combout\ = (\instancia_clk100Hz|counter\(2) & (\instancia_clk100Hz|Add0~3\ $ (GND))) # (!\instancia_clk100Hz|counter\(2) & (!\instancia_clk100Hz|Add0~3\ & VCC))
-- \instancia_clk100Hz|Add0~5\ = CARRY((\instancia_clk100Hz|counter\(2) & !\instancia_clk100Hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(2),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~3\,
	combout => \instancia_clk100Hz|Add0~4_combout\,
	cout => \instancia_clk100Hz|Add0~5\);

-- Location: FF_X45_Y2_N19
\instancia_clk100Hz|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(2));

-- Location: LCCOMB_X45_Y2_N20
\instancia_clk100Hz|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~6_combout\ = (\instancia_clk100Hz|counter\(3) & (!\instancia_clk100Hz|Add0~5\)) # (!\instancia_clk100Hz|counter\(3) & ((\instancia_clk100Hz|Add0~5\) # (GND)))
-- \instancia_clk100Hz|Add0~7\ = CARRY((!\instancia_clk100Hz|Add0~5\) # (!\instancia_clk100Hz|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(3),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~5\,
	combout => \instancia_clk100Hz|Add0~6_combout\,
	cout => \instancia_clk100Hz|Add0~7\);

-- Location: FF_X45_Y2_N21
\instancia_clk100Hz|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(3));

-- Location: LCCOMB_X45_Y2_N22
\instancia_clk100Hz|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~8_combout\ = (\instancia_clk100Hz|counter\(4) & (\instancia_clk100Hz|Add0~7\ $ (GND))) # (!\instancia_clk100Hz|counter\(4) & (!\instancia_clk100Hz|Add0~7\ & VCC))
-- \instancia_clk100Hz|Add0~9\ = CARRY((\instancia_clk100Hz|counter\(4) & !\instancia_clk100Hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(4),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~7\,
	combout => \instancia_clk100Hz|Add0~8_combout\,
	cout => \instancia_clk100Hz|Add0~9\);

-- Location: LCCOMB_X45_Y2_N8
\instancia_clk100Hz|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|counter~3_combout\ = (\instancia_clk100Hz|Add0~8_combout\ & (((!\instancia_clk100Hz|counter\(16)) # (!\instancia_clk100Hz|Equal0~4_combout\)) # (!\instancia_clk100Hz|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(17),
	datab => \instancia_clk100Hz|Equal0~4_combout\,
	datac => \instancia_clk100Hz|Add0~8_combout\,
	datad => \instancia_clk100Hz|counter\(16),
	combout => \instancia_clk100Hz|counter~3_combout\);

-- Location: FF_X45_Y2_N9
\instancia_clk100Hz|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(4));

-- Location: LCCOMB_X45_Y2_N24
\instancia_clk100Hz|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~10_combout\ = (\instancia_clk100Hz|counter\(5) & (!\instancia_clk100Hz|Add0~9\)) # (!\instancia_clk100Hz|counter\(5) & ((\instancia_clk100Hz|Add0~9\) # (GND)))
-- \instancia_clk100Hz|Add0~11\ = CARRY((!\instancia_clk100Hz|Add0~9\) # (!\instancia_clk100Hz|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(5),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~9\,
	combout => \instancia_clk100Hz|Add0~10_combout\,
	cout => \instancia_clk100Hz|Add0~11\);

-- Location: FF_X45_Y2_N25
\instancia_clk100Hz|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(5));

-- Location: LCCOMB_X45_Y2_N12
\instancia_clk100Hz|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Equal0~1_combout\ = (!\instancia_clk100Hz|counter\(5) & (!\instancia_clk100Hz|counter\(4) & (\instancia_clk100Hz|counter\(3) & \instancia_clk100Hz|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(5),
	datab => \instancia_clk100Hz|counter\(4),
	datac => \instancia_clk100Hz|counter\(3),
	datad => \instancia_clk100Hz|counter\(2),
	combout => \instancia_clk100Hz|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y2_N26
\instancia_clk100Hz|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~12_combout\ = (\instancia_clk100Hz|counter\(6) & (\instancia_clk100Hz|Add0~11\ $ (GND))) # (!\instancia_clk100Hz|counter\(6) & (!\instancia_clk100Hz|Add0~11\ & VCC))
-- \instancia_clk100Hz|Add0~13\ = CARRY((\instancia_clk100Hz|counter\(6) & !\instancia_clk100Hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(6),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~11\,
	combout => \instancia_clk100Hz|Add0~12_combout\,
	cout => \instancia_clk100Hz|Add0~13\);

-- Location: FF_X45_Y2_N27
\instancia_clk100Hz|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(6));

-- Location: LCCOMB_X45_Y2_N28
\instancia_clk100Hz|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~14_combout\ = (\instancia_clk100Hz|counter\(7) & (!\instancia_clk100Hz|Add0~13\)) # (!\instancia_clk100Hz|counter\(7) & ((\instancia_clk100Hz|Add0~13\) # (GND)))
-- \instancia_clk100Hz|Add0~15\ = CARRY((!\instancia_clk100Hz|Add0~13\) # (!\instancia_clk100Hz|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(7),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~13\,
	combout => \instancia_clk100Hz|Add0~14_combout\,
	cout => \instancia_clk100Hz|Add0~15\);

-- Location: LCCOMB_X45_Y2_N0
\instancia_clk100Hz|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|counter~2_combout\ = (\instancia_clk100Hz|Add0~14_combout\ & (((!\instancia_clk100Hz|counter\(17)) # (!\instancia_clk100Hz|Equal0~4_combout\)) # (!\instancia_clk100Hz|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(16),
	datab => \instancia_clk100Hz|Equal0~4_combout\,
	datac => \instancia_clk100Hz|counter\(17),
	datad => \instancia_clk100Hz|Add0~14_combout\,
	combout => \instancia_clk100Hz|counter~2_combout\);

-- Location: FF_X45_Y2_N1
\instancia_clk100Hz|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(7));

-- Location: LCCOMB_X45_Y2_N30
\instancia_clk100Hz|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~16_combout\ = (\instancia_clk100Hz|counter\(8) & (\instancia_clk100Hz|Add0~15\ $ (GND))) # (!\instancia_clk100Hz|counter\(8) & (!\instancia_clk100Hz|Add0~15\ & VCC))
-- \instancia_clk100Hz|Add0~17\ = CARRY((\instancia_clk100Hz|counter\(8) & !\instancia_clk100Hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(8),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~15\,
	combout => \instancia_clk100Hz|Add0~16_combout\,
	cout => \instancia_clk100Hz|Add0~17\);

-- Location: FF_X45_Y2_N31
\instancia_clk100Hz|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(8));

-- Location: LCCOMB_X45_Y1_N0
\instancia_clk100Hz|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~18_combout\ = (\instancia_clk100Hz|counter\(9) & (!\instancia_clk100Hz|Add0~17\)) # (!\instancia_clk100Hz|counter\(9) & ((\instancia_clk100Hz|Add0~17\) # (GND)))
-- \instancia_clk100Hz|Add0~19\ = CARRY((!\instancia_clk100Hz|Add0~17\) # (!\instancia_clk100Hz|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(9),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~17\,
	combout => \instancia_clk100Hz|Add0~18_combout\,
	cout => \instancia_clk100Hz|Add0~19\);

-- Location: FF_X45_Y1_N1
\instancia_clk100Hz|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(9));

-- Location: LCCOMB_X45_Y1_N2
\instancia_clk100Hz|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~20_combout\ = (\instancia_clk100Hz|counter\(10) & (\instancia_clk100Hz|Add0~19\ $ (GND))) # (!\instancia_clk100Hz|counter\(10) & (!\instancia_clk100Hz|Add0~19\ & VCC))
-- \instancia_clk100Hz|Add0~21\ = CARRY((\instancia_clk100Hz|counter\(10) & !\instancia_clk100Hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(10),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~19\,
	combout => \instancia_clk100Hz|Add0~20_combout\,
	cout => \instancia_clk100Hz|Add0~21\);

-- Location: FF_X45_Y1_N3
\instancia_clk100Hz|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(10));

-- Location: LCCOMB_X45_Y1_N4
\instancia_clk100Hz|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~22_combout\ = (\instancia_clk100Hz|counter\(11) & (!\instancia_clk100Hz|Add0~21\)) # (!\instancia_clk100Hz|counter\(11) & ((\instancia_clk100Hz|Add0~21\) # (GND)))
-- \instancia_clk100Hz|Add0~23\ = CARRY((!\instancia_clk100Hz|Add0~21\) # (!\instancia_clk100Hz|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(11),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~21\,
	combout => \instancia_clk100Hz|Add0~22_combout\,
	cout => \instancia_clk100Hz|Add0~23\);

-- Location: FF_X45_Y1_N5
\instancia_clk100Hz|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(11));

-- Location: LCCOMB_X45_Y1_N6
\instancia_clk100Hz|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~24_combout\ = (\instancia_clk100Hz|counter\(12) & (\instancia_clk100Hz|Add0~23\ $ (GND))) # (!\instancia_clk100Hz|counter\(12) & (!\instancia_clk100Hz|Add0~23\ & VCC))
-- \instancia_clk100Hz|Add0~25\ = CARRY((\instancia_clk100Hz|counter\(12) & !\instancia_clk100Hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(12),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~23\,
	combout => \instancia_clk100Hz|Add0~24_combout\,
	cout => \instancia_clk100Hz|Add0~25\);

-- Location: LCCOMB_X45_Y1_N26
\instancia_clk100Hz|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|counter~4_combout\ = (\instancia_clk100Hz|Add0~24_combout\ & (((!\instancia_clk100Hz|counter\(17)) # (!\instancia_clk100Hz|Equal0~4_combout\)) # (!\instancia_clk100Hz|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(16),
	datab => \instancia_clk100Hz|Equal0~4_combout\,
	datac => \instancia_clk100Hz|counter\(17),
	datad => \instancia_clk100Hz|Add0~24_combout\,
	combout => \instancia_clk100Hz|counter~4_combout\);

-- Location: FF_X45_Y1_N27
\instancia_clk100Hz|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(12));

-- Location: LCCOMB_X45_Y1_N8
\instancia_clk100Hz|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~26_combout\ = (\instancia_clk100Hz|counter\(13) & (!\instancia_clk100Hz|Add0~25\)) # (!\instancia_clk100Hz|counter\(13) & ((\instancia_clk100Hz|Add0~25\) # (GND)))
-- \instancia_clk100Hz|Add0~27\ = CARRY((!\instancia_clk100Hz|Add0~25\) # (!\instancia_clk100Hz|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(13),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~25\,
	combout => \instancia_clk100Hz|Add0~26_combout\,
	cout => \instancia_clk100Hz|Add0~27\);

-- Location: FF_X45_Y1_N9
\instancia_clk100Hz|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(13));

-- Location: LCCOMB_X45_Y1_N10
\instancia_clk100Hz|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~28_combout\ = (\instancia_clk100Hz|counter\(14) & (\instancia_clk100Hz|Add0~27\ $ (GND))) # (!\instancia_clk100Hz|counter\(14) & (!\instancia_clk100Hz|Add0~27\ & VCC))
-- \instancia_clk100Hz|Add0~29\ = CARRY((\instancia_clk100Hz|counter\(14) & !\instancia_clk100Hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(14),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~27\,
	combout => \instancia_clk100Hz|Add0~28_combout\,
	cout => \instancia_clk100Hz|Add0~29\);

-- Location: LCCOMB_X45_Y1_N20
\instancia_clk100Hz|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|counter~5_combout\ = (\instancia_clk100Hz|Add0~28_combout\ & (((!\instancia_clk100Hz|counter\(17)) # (!\instancia_clk100Hz|Equal0~4_combout\)) # (!\instancia_clk100Hz|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(16),
	datab => \instancia_clk100Hz|Equal0~4_combout\,
	datac => \instancia_clk100Hz|counter\(17),
	datad => \instancia_clk100Hz|Add0~28_combout\,
	combout => \instancia_clk100Hz|counter~5_combout\);

-- Location: FF_X45_Y1_N21
\instancia_clk100Hz|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(14));

-- Location: LCCOMB_X45_Y1_N12
\instancia_clk100Hz|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~30_combout\ = (\instancia_clk100Hz|counter\(15) & (!\instancia_clk100Hz|Add0~29\)) # (!\instancia_clk100Hz|counter\(15) & ((\instancia_clk100Hz|Add0~29\) # (GND)))
-- \instancia_clk100Hz|Add0~31\ = CARRY((!\instancia_clk100Hz|Add0~29\) # (!\instancia_clk100Hz|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_clk100Hz|counter\(15),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~29\,
	combout => \instancia_clk100Hz|Add0~30_combout\,
	cout => \instancia_clk100Hz|Add0~31\);

-- Location: LCCOMB_X45_Y1_N18
\instancia_clk100Hz|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|counter~6_combout\ = (\instancia_clk100Hz|Add0~30_combout\ & (((!\instancia_clk100Hz|counter\(17)) # (!\instancia_clk100Hz|Equal0~4_combout\)) # (!\instancia_clk100Hz|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(16),
	datab => \instancia_clk100Hz|Equal0~4_combout\,
	datac => \instancia_clk100Hz|counter\(17),
	datad => \instancia_clk100Hz|Add0~30_combout\,
	combout => \instancia_clk100Hz|counter~6_combout\);

-- Location: FF_X45_Y1_N19
\instancia_clk100Hz|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(15));

-- Location: LCCOMB_X45_Y1_N24
\instancia_clk100Hz|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Equal0~3_combout\ = (\instancia_clk100Hz|counter\(12) & (\instancia_clk100Hz|counter\(14) & (!\instancia_clk100Hz|counter\(13) & \instancia_clk100Hz|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(12),
	datab => \instancia_clk100Hz|counter\(14),
	datac => \instancia_clk100Hz|counter\(13),
	datad => \instancia_clk100Hz|counter\(15),
	combout => \instancia_clk100Hz|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y2_N4
\instancia_clk100Hz|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Equal0~0_combout\ = (!\instancia_clk100Hz|counter\(6) & (\instancia_clk100Hz|counter\(7) & (!\instancia_clk100Hz|counter\(8) & !\instancia_clk100Hz|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(6),
	datab => \instancia_clk100Hz|counter\(7),
	datac => \instancia_clk100Hz|counter\(8),
	datad => \instancia_clk100Hz|counter\(9),
	combout => \instancia_clk100Hz|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y2_N10
\instancia_clk100Hz|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Equal0~2_combout\ = (\instancia_clk100Hz|counter\(0) & (!\instancia_clk100Hz|counter\(11) & (!\instancia_clk100Hz|counter\(10) & \instancia_clk100Hz|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(0),
	datab => \instancia_clk100Hz|counter\(11),
	datac => \instancia_clk100Hz|counter\(10),
	datad => \instancia_clk100Hz|counter\(1),
	combout => \instancia_clk100Hz|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y2_N6
\instancia_clk100Hz|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Equal0~4_combout\ = (\instancia_clk100Hz|Equal0~1_combout\ & (\instancia_clk100Hz|Equal0~3_combout\ & (\instancia_clk100Hz|Equal0~0_combout\ & \instancia_clk100Hz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|Equal0~1_combout\,
	datab => \instancia_clk100Hz|Equal0~3_combout\,
	datac => \instancia_clk100Hz|Equal0~0_combout\,
	datad => \instancia_clk100Hz|Equal0~2_combout\,
	combout => \instancia_clk100Hz|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y1_N14
\instancia_clk100Hz|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~32_combout\ = (\instancia_clk100Hz|counter\(16) & (\instancia_clk100Hz|Add0~31\ $ (GND))) # (!\instancia_clk100Hz|counter\(16) & (!\instancia_clk100Hz|Add0~31\ & VCC))
-- \instancia_clk100Hz|Add0~33\ = CARRY((\instancia_clk100Hz|counter\(16) & !\instancia_clk100Hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(16),
	datad => VCC,
	cin => \instancia_clk100Hz|Add0~31\,
	combout => \instancia_clk100Hz|Add0~32_combout\,
	cout => \instancia_clk100Hz|Add0~33\);

-- Location: LCCOMB_X45_Y1_N16
\instancia_clk100Hz|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|Add0~34_combout\ = \instancia_clk100Hz|Add0~33\ $ (\instancia_clk100Hz|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instancia_clk100Hz|counter\(17),
	cin => \instancia_clk100Hz|Add0~33\,
	combout => \instancia_clk100Hz|Add0~34_combout\);

-- Location: LCCOMB_X45_Y1_N28
\instancia_clk100Hz|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|counter~1_combout\ = (\instancia_clk100Hz|Add0~34_combout\ & (((!\instancia_clk100Hz|counter\(17)) # (!\instancia_clk100Hz|Equal0~4_combout\)) # (!\instancia_clk100Hz|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(16),
	datab => \instancia_clk100Hz|Equal0~4_combout\,
	datac => \instancia_clk100Hz|counter\(17),
	datad => \instancia_clk100Hz|Add0~34_combout\,
	combout => \instancia_clk100Hz|counter~1_combout\);

-- Location: FF_X45_Y1_N29
\instancia_clk100Hz|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(17));

-- Location: LCCOMB_X45_Y1_N22
\instancia_clk100Hz|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|counter~0_combout\ = (\instancia_clk100Hz|Add0~32_combout\ & (((!\instancia_clk100Hz|counter\(16)) # (!\instancia_clk100Hz|Equal0~4_combout\)) # (!\instancia_clk100Hz|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(17),
	datab => \instancia_clk100Hz|Equal0~4_combout\,
	datac => \instancia_clk100Hz|counter\(16),
	datad => \instancia_clk100Hz|Add0~32_combout\,
	combout => \instancia_clk100Hz|counter~0_combout\);

-- Location: FF_X45_Y1_N23
\instancia_clk100Hz|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \instancia_clk100Hz|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|counter\(16));

-- Location: LCCOMB_X45_Y2_N2
\instancia_clk100Hz|temporal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instancia_clk100Hz|temporal~0_combout\ = \instancia_clk100Hz|temporal~q\ $ (((\instancia_clk100Hz|counter\(16) & (\instancia_clk100Hz|counter\(17) & \instancia_clk100Hz|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_clk100Hz|counter\(16),
	datab => \instancia_clk100Hz|counter\(17),
	datac => \instancia_clk100Hz|temporal~q\,
	datad => \instancia_clk100Hz|Equal0~4_combout\,
	combout => \instancia_clk100Hz|temporal~0_combout\);

-- Location: FF_X45_Y2_N29
\instancia_clk100Hz|temporal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \instancia_clk100Hz|temporal~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia_clk100Hz|temporal~q\);

-- Location: CLKCTRL_G15
\instancia_clk100Hz|temporal~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \instancia_clk100Hz|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \instancia_clk100Hz|temporal~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y35_N8
\senha[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha(3),
	o => \senha[3]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\senha[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha(2),
	o => \senha[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\senha[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha(0),
	o => \senha[0]~input_o\);

-- Location: IOIBUF_X0_Y35_N22
\senha[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha(1),
	o => \senha[1]~input_o\);

-- Location: LCCOMB_X1_Y35_N0
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\senha[3]~input_o\ & (!\senha[2]~input_o\ & (\senha[0]~input_o\ & \senha[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senha[3]~input_o\,
	datab => \senha[2]~input_o\,
	datac => \senha[0]~input_o\,
	datad => \senha[1]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X0_Y37_N15
\botao_enter~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_enter,
	o => \botao_enter~input_o\);

-- Location: LCCOMB_X1_Y36_N12
\last_botao_enter~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \last_botao_enter~feeder_combout\ = \botao_enter~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botao_enter~input_o\,
	combout => \last_botao_enter~feeder_combout\);

-- Location: FF_X1_Y36_N13
last_botao_enter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \last_botao_enter~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last_botao_enter~q\);

-- Location: LCCOMB_X1_Y36_N14
\detector_de_borda_enter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detector_de_borda_enter~0_combout\ = (\botao_enter~input_o\ & !\last_botao_enter~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \botao_enter~input_o\,
	datac => \last_botao_enter~q\,
	combout => \detector_de_borda_enter~0_combout\);

-- Location: FF_X1_Y36_N15
enter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \detector_de_borda_enter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter~q\);

-- Location: IOIBUF_X0_Y36_N8
\botao_intrusao~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_intrusao,
	o => \botao_intrusao~input_o\);

-- Location: LCCOMB_X1_Y36_N26
\last_botao_intrusao~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \last_botao_intrusao~feeder_combout\ = \botao_intrusao~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botao_intrusao~input_o\,
	combout => \last_botao_intrusao~feeder_combout\);

-- Location: FF_X1_Y36_N27
last_botao_intrusao : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \last_botao_intrusao~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last_botao_intrusao~q\);

-- Location: LCCOMB_X1_Y36_N24
\detector_de_borda_intrusao~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detector_de_borda_intrusao~0_combout\ = (\botao_intrusao~input_o\ & !\last_botao_intrusao~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botao_intrusao~input_o\,
	datad => \last_botao_intrusao~q\,
	combout => \detector_de_borda_intrusao~0_combout\);

-- Location: FF_X1_Y36_N25
intrusao : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \detector_de_borda_intrusao~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \intrusao~q\);

-- Location: LCCOMB_X1_Y36_N30
\s_atual.senha_desarmar~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_atual.senha_desarmar~feeder_combout\ = \s_atual.ativar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_atual.ativar~q\,
	combout => \s_atual.senha_desarmar~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y36_N31
\s_atual.senha_desarmar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \s_atual.senha_desarmar~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_atual.senha_desarmar~q\);

-- Location: LCCOMB_X1_Y36_N18
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\process_0~0_combout\ & ((\s_atual.senha_desarmar~q\) # ((\s_atual.desarmar_disparo~q\)))) # (!\process_0~0_combout\ & (((\s_atual.senha_armar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_atual.senha_desarmar~q\,
	datab => \process_0~0_combout\,
	datac => \s_atual.desarmar_disparo~q\,
	datad => \s_atual.senha_armar~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\enter~q\ & ((!\Selector0~0_combout\))) # (!\enter~q\ & (\s_atual.desativado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enter~q\,
	datac => \s_atual.desativado~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X1_Y36_N11
\s_atual.desativado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_atual.desativado~q\);

-- Location: LCCOMB_X1_Y36_N0
\s_atual.senha_armar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_atual.senha_armar~0_combout\ = !\s_atual.desativado~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_atual.desativado~q\,
	combout => \s_atual.senha_armar~0_combout\);

-- Location: FF_X1_Y36_N1
\s_atual.senha_armar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \s_atual.senha_armar~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_atual.senha_armar~q\);

-- Location: LCCOMB_X1_Y36_N16
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\enter~q\ & ((\process_0~0_combout\ & (\s_atual.senha_armar~q\)) # (!\process_0~0_combout\ & ((\s_atual.senha_desarmar~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \s_atual.senha_armar~q\,
	datac => \s_atual.senha_desarmar~q\,
	datad => \enter~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y36_N20
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((!\intrusao~q\ & (!\enter~q\ & \s_atual.ativar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \intrusao~q\,
	datab => \enter~q\,
	datac => \s_atual.ativar~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X1_Y36_N21
\s_atual.ativar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_atual.ativar~q\);

-- Location: LCCOMB_X1_Y36_N28
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\enter~q\ & ((\s_atual.disparar~q\) # ((\intrusao~q\ & \s_atual.ativar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \intrusao~q\,
	datab => \enter~q\,
	datac => \s_atual.disparar~q\,
	datad => \s_atual.ativar~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y36_N8
\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\s_atual.desarmar_disparo~q\ & (!\process_0~0_combout\ & \enter~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_atual.desarmar_disparo~q\,
	datab => \process_0~0_combout\,
	datac => \enter~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X1_Y36_N9
\s_atual.disparar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_atual.disparar~q\);

-- Location: FF_X1_Y36_N23
\s_atual.desarmar_disparo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia_clk100Hz|temporal~clkctrl_outclk\,
	asdata => \s_atual.disparar~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_atual.desarmar_disparo~q\);

-- Location: LCCOMB_X1_Y37_N16
\disparo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \disparo~2_combout\ = (\s_atual.desarmar_disparo~q\) # (\s_atual.disparar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_atual.desarmar_disparo~q\,
	datad => \s_atual.disparar~q\,
	combout => \disparo~2_combout\);

-- Location: LCCOMB_X1_Y36_N22
\ativado~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ativado~2_combout\ = (\s_atual.senha_armar~q\) # (!\s_atual.desativado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_atual.senha_armar~q\,
	datad => \s_atual.desativado~q\,
	combout => \ativado~2_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_disparo <= \disparo~output_o\;

ww_ativado <= \ativado~output_o\;

ww_state_flag(0) <= \state_flag[0]~output_o\;

ww_state_flag(1) <= \state_flag[1]~output_o\;

ww_state_flag(2) <= \state_flag[2]~output_o\;

ww_state_flag(3) <= \state_flag[3]~output_o\;

ww_state_flag(4) <= \state_flag[4]~output_o\;

ww_state_flag(5) <= \state_flag[5]~output_o\;
END structure;


