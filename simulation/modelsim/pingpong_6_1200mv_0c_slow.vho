-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/23/2022 15:18:47"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pingpong IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	P : IN std_logic;
	K : IN std_logic;
	L : OUT std_logic_vector(0 TO 9);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	v0 : OUT std_logic;
	v1 : OUT std_logic;
	v2 : OUT std_logic;
	v3 : OUT std_logic
	);
END pingpong;

-- Design Ports Information
-- L[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v0	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v1	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v2	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v3	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pingpong IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_L : std_logic_vector(0 TO 9);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_v0 : std_logic;
SIGNAL ww_v1 : std_logic;
SIGNAL ww_v2 : std_logic;
SIGNAL ww_v3 : std_logic;
SIGNAL \plus~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dcnt[22]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \plus1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L[9]~output_o\ : std_logic;
SIGNAL \L[8]~output_o\ : std_logic;
SIGNAL \L[7]~output_o\ : std_logic;
SIGNAL \L[6]~output_o\ : std_logic;
SIGNAL \L[5]~output_o\ : std_logic;
SIGNAL \L[4]~output_o\ : std_logic;
SIGNAL \L[3]~output_o\ : std_logic;
SIGNAL \L[2]~output_o\ : std_logic;
SIGNAL \L[1]~output_o\ : std_logic;
SIGNAL \L[0]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \v0~output_o\ : std_logic;
SIGNAL \v1~output_o\ : std_logic;
SIGNAL \v2~output_o\ : std_logic;
SIGNAL \v3~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \dcnt~10_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \dcnt~9_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \dcnt~8_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \dcnt~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \dcnt~6_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \dcnt~5_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \dcnt~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \dcnt~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \dcnt~11_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \dcnt~3_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \dcnt~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \dcnt~0_combout\ : std_logic;
SIGNAL \dcnt[22]~clkctrl_outclk\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \next_state.s19~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \present_state.s19~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \present_state.s22~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \present_state.s0~feeder_combout\ : std_logic;
SIGNAL \present_state.s0~q\ : std_logic;
SIGNAL \next_state.s1~0_combout\ : std_logic;
SIGNAL \present_state.s1~feeder_combout\ : std_logic;
SIGNAL \present_state.s1~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.s2~q\ : std_logic;
SIGNAL \present_state.s3~q\ : std_logic;
SIGNAL \present_state.s4~q\ : std_logic;
SIGNAL \present_state.s5~feeder_combout\ : std_logic;
SIGNAL \present_state.s5~q\ : std_logic;
SIGNAL \present_state.s6~q\ : std_logic;
SIGNAL \present_state.s7~q\ : std_logic;
SIGNAL \present_state.s8~feeder_combout\ : std_logic;
SIGNAL \present_state.s8~q\ : std_logic;
SIGNAL \present_state.s9~q\ : std_logic;
SIGNAL \next_state.s10~0_combout\ : std_logic;
SIGNAL \present_state.s10~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.s11~q\ : std_logic;
SIGNAL \present_state.s12~q\ : std_logic;
SIGNAL \present_state.s13~q\ : std_logic;
SIGNAL \present_state.s14~q\ : std_logic;
SIGNAL \present_state.s15~q\ : std_logic;
SIGNAL \present_state.s16~q\ : std_logic;
SIGNAL \present_state.s17~q\ : std_logic;
SIGNAL \present_state.s18~feeder_combout\ : std_logic;
SIGNAL \present_state.s18~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \present_state.s20~q\ : std_logic;
SIGNAL \next_state.s21~0_combout\ : std_logic;
SIGNAL \present_state.s21~q\ : std_logic;
SIGNAL \L~0_combout\ : std_logic;
SIGNAL \L~1_combout\ : std_logic;
SIGNAL \L~2_combout\ : std_logic;
SIGNAL \L~3_combout\ : std_logic;
SIGNAL \L~4_combout\ : std_logic;
SIGNAL \L~5_combout\ : std_logic;
SIGNAL \L~6_combout\ : std_logic;
SIGNAL \L~7_combout\ : std_logic;
SIGNAL \L~8_combout\ : std_logic;
SIGNAL \L~9_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \plus~combout\ : std_logic;
SIGNAL \plus~clkctrl_outclk\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \point[0]~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \plus1~combout\ : std_logic;
SIGNAL \plus1~clkctrl_outclk\ : std_logic;
SIGNAL \HEX3~3_combout\ : std_logic;
SIGNAL \point1[0]~0_combout\ : std_logic;
SIGNAL \ch0~1_combout\ : std_logic;
SIGNAL \ch0~2_combout\ : std_logic;
SIGNAL \ch0~q\ : std_logic;
SIGNAL \ch1~0_combout\ : std_logic;
SIGNAL \HEX3~6_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \ch1~1_combout\ : std_logic;
SIGNAL \ch1~2_combout\ : std_logic;
SIGNAL \ch1~q\ : std_logic;
SIGNAL \ch0~0_combout\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \HEX3~0_combout\ : std_logic;
SIGNAL \HEX3~1_combout\ : std_logic;
SIGNAL \HEX3~2_combout\ : std_logic;
SIGNAL \HEX3~4_combout\ : std_logic;
SIGNAL \HEX3~5_combout\ : std_logic;
SIGNAL \dot0[0]~2_combout\ : std_logic;
SIGNAL \dot0[1]~0_combout\ : std_logic;
SIGNAL \dot0[1]~1_combout\ : std_logic;
SIGNAL \v0~0_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \dot1[0]~2_combout\ : std_logic;
SIGNAL \dot1[1]~0_combout\ : std_logic;
SIGNAL \dot1[1]~1_combout\ : std_logic;
SIGNAL \v2~0_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL point1 : std_logic_vector(2 DOWNTO 0);
SIGNAL point : std_logic_vector(2 DOWNTO 0);
SIGNAL dot1 : std_logic_vector(1 DOWNTO 0);
SIGNAL dot0 : std_logic_vector(1 DOWNTO 0);
SIGNAL dcnt : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_ch0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ch1~2_combout\ : std_logic;
SIGNAL \ALT_INV_ch1~0_combout\ : std_logic;
SIGNAL \ALT_INV_ch0~q\ : std_logic;
SIGNAL \ALT_INV_ch0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ch1~q\ : std_logic;
SIGNAL \ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \ALT_INV_v2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \ALT_INV_v0~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX3~1_combout\ : std_logic;
SIGNAL \ALT_INV_HEX0~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_P <= P;
ww_K <= K;
L <= ww_L;
HEX0 <= ww_HEX0;
HEX3 <= ww_HEX3;
v0 <= ww_v0;
v1 <= ww_v1;
v2 <= ww_v2;
v3 <= ww_v3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\plus~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \plus~combout\);

\dcnt[22]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & dcnt(22));

\plus1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \plus1~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ch0~2_combout\ <= NOT \ch0~2_combout\;
\ALT_INV_ch1~2_combout\ <= NOT \ch1~2_combout\;
\ALT_INV_ch1~0_combout\ <= NOT \ch1~0_combout\;
\ALT_INV_ch0~q\ <= NOT \ch0~q\;
\ALT_INV_ch0~0_combout\ <= NOT \ch0~0_combout\;
\ALT_INV_ch1~q\ <= NOT \ch1~q\;
\ALT_INV_Equal15~0_combout\ <= NOT \Equal15~0_combout\;
\ALT_INV_v2~0_combout\ <= NOT \v2~0_combout\;
\ALT_INV_Equal13~0_combout\ <= NOT \Equal13~0_combout\;
\ALT_INV_v0~0_combout\ <= NOT \v0~0_combout\;
\ALT_INV_HEX3~1_combout\ <= NOT \HEX3~1_combout\;
\ALT_INV_HEX0~1_combout\ <= NOT \HEX0~1_combout\;

-- Location: IOOBUF_X0_Y27_N16
\L[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~0_combout\,
	devoe => ww_devoe,
	o => \L[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\L[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~1_combout\,
	devoe => ww_devoe,
	o => \L[8]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\L[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~2_combout\,
	devoe => ww_devoe,
	o => \L[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\L[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~3_combout\,
	devoe => ww_devoe,
	o => \L[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\L[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~4_combout\,
	devoe => ww_devoe,
	o => \L[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\L[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~5_combout\,
	devoe => ww_devoe,
	o => \L[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\L[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~6_combout\,
	devoe => ww_devoe,
	o => \L[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\L[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~7_combout\,
	devoe => ww_devoe,
	o => \L[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\L[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~8_combout\,
	devoe => ww_devoe,
	o => \L[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\L[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~9_combout\,
	devoe => ww_devoe,
	o => \L[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX3~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\v0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_v0~0_combout\,
	devoe => ww_devoe,
	o => \v0~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\v1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal13~0_combout\,
	devoe => ww_devoe,
	o => \v1~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\v2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_v2~0_combout\,
	devoe => ww_devoe,
	o => \v2~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\v3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal15~0_combout\,
	devoe => ww_devoe,
	o => \v3~output_o\);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y20_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = dcnt(0) $ (VCC)
-- \Add0~1\ = CARRY(dcnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dcnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X11_Y20_N9
\dcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(0));

-- Location: LCCOMB_X11_Y20_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (dcnt(1) & (!\Add0~1\)) # (!dcnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!dcnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X11_Y20_N11
\dcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(1));

-- Location: LCCOMB_X11_Y20_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (dcnt(2) & (\Add0~3\ $ (GND))) # (!dcnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((dcnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X11_Y20_N13
\dcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(2));

-- Location: LCCOMB_X11_Y20_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (dcnt(3) & (!\Add0~5\)) # (!dcnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!dcnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X11_Y20_N15
\dcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(3));

-- Location: LCCOMB_X11_Y20_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (dcnt(4) & (\Add0~7\ $ (GND))) # (!dcnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((dcnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X11_Y20_N17
\dcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(4));

-- Location: LCCOMB_X11_Y20_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (dcnt(5) & (!\Add0~9\)) # (!dcnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!dcnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X11_Y20_N19
\dcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(5));

-- Location: LCCOMB_X11_Y20_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (dcnt(6) & (\Add0~11\ $ (GND))) # (!dcnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((dcnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X11_Y20_N6
\dcnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~10_combout\ = (\Add0~12_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Add0~12_combout\,
	datad => \Equal0~4_combout\,
	combout => \dcnt~10_combout\);

-- Location: FF_X11_Y20_N7
\dcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(6));

-- Location: LCCOMB_X11_Y20_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (dcnt(7) & (!\Add0~13\)) # (!dcnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!dcnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X11_Y20_N23
\dcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(7));

-- Location: LCCOMB_X11_Y20_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (dcnt(8) & (\Add0~15\ $ (GND))) # (!dcnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((dcnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X11_Y20_N25
\dcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(8));

-- Location: LCCOMB_X11_Y20_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (dcnt(9) & (!\Add0~17\)) # (!dcnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!dcnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X11_Y20_N27
\dcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(9));

-- Location: LCCOMB_X11_Y20_N28
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (dcnt(10) & (\Add0~19\ $ (GND))) # (!dcnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((dcnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X11_Y20_N29
\dcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(10));

-- Location: LCCOMB_X11_Y20_N30
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (dcnt(11) & (!\Add0~21\)) # (!dcnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!dcnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X11_Y20_N4
\dcnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~9_combout\ = (\Add0~22_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~22_combout\,
	datad => \Equal0~4_combout\,
	combout => \dcnt~9_combout\);

-- Location: FF_X11_Y20_N5
\dcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(11));

-- Location: LCCOMB_X11_Y19_N0
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (dcnt(12) & (\Add0~23\ $ (GND))) # (!dcnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((dcnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X10_Y19_N12
\dcnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~8_combout\ = (\Add0~24_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~24_combout\,
	datad => \Equal0~4_combout\,
	combout => \dcnt~8_combout\);

-- Location: FF_X10_Y19_N13
\dcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(12));

-- Location: LCCOMB_X11_Y19_N2
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (dcnt(13) & (!\Add0~25\)) # (!dcnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!dcnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X10_Y19_N16
\dcnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~7_combout\ = (\Add0~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \dcnt~7_combout\);

-- Location: FF_X10_Y19_N17
\dcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(13));

-- Location: LCCOMB_X10_Y19_N30
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (dcnt(12) & (dcnt(13) & (dcnt(14) & !dcnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(12),
	datab => dcnt(13),
	datac => dcnt(14),
	datad => dcnt(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y20_N20
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!dcnt(6) & (!dcnt(7) & (dcnt(5) & dcnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(6),
	datab => dcnt(7),
	datac => dcnt(5),
	datad => dcnt(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X11_Y20_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (dcnt(2) & (dcnt(3) & (dcnt(1) & dcnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(2),
	datab => dcnt(3),
	datac => dcnt(1),
	datad => dcnt(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y20_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!dcnt(9) & (!dcnt(8) & (dcnt(11) & !dcnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(9),
	datab => dcnt(8),
	datac => dcnt(11),
	datad => dcnt(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y19_N10
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X11_Y19_N4
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (dcnt(14) & (\Add0~27\ $ (GND))) # (!dcnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((dcnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X10_Y19_N6
\dcnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~6_combout\ = (\Add0~28_combout\ & ((!\Equal0~8_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datad => \Add0~28_combout\,
	combout => \dcnt~6_combout\);

-- Location: FF_X10_Y19_N7
\dcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(14));

-- Location: LCCOMB_X11_Y19_N6
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (dcnt(15) & (!\Add0~29\)) # (!dcnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!dcnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X11_Y19_N7
\dcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(15));

-- Location: LCCOMB_X11_Y19_N8
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (dcnt(16) & (\Add0~31\ $ (GND))) # (!dcnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((dcnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X11_Y19_N26
\dcnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~5_combout\ = (\Add0~32_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \dcnt~5_combout\);

-- Location: FF_X11_Y19_N27
\dcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(16));

-- Location: LCCOMB_X11_Y19_N10
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (dcnt(17) & (!\Add0~33\)) # (!dcnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!dcnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X11_Y19_N11
\dcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(17));

-- Location: LCCOMB_X11_Y19_N12
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (dcnt(18) & (\Add0~35\ $ (GND))) # (!dcnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((dcnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X10_Y19_N28
\dcnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~4_combout\ = (\Add0~36_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~36_combout\,
	datad => \Equal0~4_combout\,
	combout => \dcnt~4_combout\);

-- Location: FF_X10_Y19_N29
\dcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(18));

-- Location: LCCOMB_X10_Y19_N4
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (dcnt(19) & (dcnt(16) & (!dcnt(17) & dcnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(19),
	datab => dcnt(16),
	datac => dcnt(17),
	datad => dcnt(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X11_Y19_N16
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (dcnt(20) & (\Add0~39\ $ (GND))) # (!dcnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((dcnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X11_Y19_N18
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (dcnt(21) & (!\Add0~41\)) # (!dcnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!dcnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X11_Y19_N30
\dcnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~1_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \dcnt~1_combout\);

-- Location: FF_X11_Y19_N31
\dcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(21));

-- Location: LCCOMB_X11_Y19_N20
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (dcnt(22) & (\Add0~43\ $ (GND))) # (!dcnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((dcnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X11_Y19_N22
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (dcnt(23) & (!\Add0~45\)) # (!dcnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!dcnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X11_Y19_N23
\dcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(23));

-- Location: LCCOMB_X11_Y19_N24
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!dcnt(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => dcnt(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X10_Y19_N18
\dcnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~11_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \dcnt~11_combout\);

-- Location: FF_X10_Y19_N19
\dcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(24));

-- Location: LCCOMB_X10_Y19_N24
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & dcnt(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => dcnt(24),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X11_Y19_N14
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (dcnt(19) & (!\Add0~37\)) # (!dcnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!dcnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dcnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X11_Y19_N28
\dcnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~3_combout\ = (\Add0~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~4_combout\,
	combout => \dcnt~3_combout\);

-- Location: FF_X11_Y19_N29
\dcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(19));

-- Location: LCCOMB_X10_Y19_N20
\dcnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~2_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \dcnt~2_combout\);

-- Location: FF_X10_Y19_N21
\dcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(20));

-- Location: LCCOMB_X10_Y19_N26
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (dcnt(22) & (dcnt(20) & (!dcnt(23) & dcnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcnt(22),
	datab => dcnt(20),
	datac => dcnt(23),
	datad => dcnt(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X10_Y19_N22
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (dcnt(24) & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => dcnt(24),
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X10_Y19_N0
\dcnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dcnt~0_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~44_combout\,
	combout => \dcnt~0_combout\);

-- Location: FF_X10_Y19_N1
\dcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dcnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dcnt(22));

-- Location: CLKCTRL_G1
\dcnt[22]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dcnt[22]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dcnt[22]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N15
\P~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\K~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: LCCOMB_X2_Y21_N18
\next_state.s19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s19~0_combout\ = (\present_state.s18~q\ & \P~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s18~q\,
	datad => \P~input_o\,
	combout => \next_state.s19~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X2_Y21_N19
\present_state.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \next_state.s19~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s19~q\);

-- Location: LCCOMB_X1_Y21_N2
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\K~input_o\ & (\present_state.s10~q\)) # (!\K~input_o\ & ((\present_state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datac => \present_state.s10~q\,
	datad => \present_state.s9~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X1_Y21_N3
\present_state.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => dcnt(22),
	d => \Selector4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s22~q\);

-- Location: LCCOMB_X2_Y21_N6
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\present_state.s22~q\ & ((\present_state.s0~q\) # (!\P~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s22~q\,
	datac => \present_state.s0~q\,
	datad => \P~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X2_Y21_N12
\present_state.s0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \present_state.s0~feeder_combout\ = \Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	combout => \present_state.s0~feeder_combout\);

-- Location: FF_X2_Y21_N13
\present_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \present_state.s0~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s0~q\);

-- Location: LCCOMB_X2_Y21_N24
\next_state.s1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s1~0_combout\ = (!\present_state.s0~q\ & !\P~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s0~q\,
	datad => \P~input_o\,
	combout => \next_state.s1~0_combout\);

-- Location: LCCOMB_X2_Y21_N8
\present_state.s1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \present_state.s1~feeder_combout\ = \next_state.s1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.s1~0_combout\,
	combout => \present_state.s1~feeder_combout\);

-- Location: FF_X2_Y21_N9
\present_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \present_state.s1~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s1~q\);

-- Location: LCCOMB_X2_Y21_N14
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\present_state.s1~q\) # ((\present_state.s19~q\ & !\P~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s19~q\,
	datac => \present_state.s1~q\,
	datad => \P~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X2_Y21_N15
\present_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s2~q\);

-- Location: FF_X2_Y21_N27
\present_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s2~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s3~q\);

-- Location: FF_X1_Y21_N27
\present_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s3~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s4~q\);

-- Location: LCCOMB_X1_Y21_N12
\present_state.s5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \present_state.s5~feeder_combout\ = \present_state.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.s4~q\,
	combout => \present_state.s5~feeder_combout\);

-- Location: FF_X1_Y21_N13
\present_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \present_state.s5~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s5~q\);

-- Location: FF_X1_Y21_N5
\present_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s5~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s6~q\);

-- Location: FF_X1_Y21_N17
\present_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s6~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s7~q\);

-- Location: LCCOMB_X1_Y21_N18
\present_state.s8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \present_state.s8~feeder_combout\ = \present_state.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.s7~q\,
	combout => \present_state.s8~feeder_combout\);

-- Location: FF_X1_Y21_N19
\present_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \present_state.s8~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s8~q\);

-- Location: FF_X1_Y21_N7
\present_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s8~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s9~q\);

-- Location: LCCOMB_X1_Y21_N30
\next_state.s10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s10~0_combout\ = (\K~input_o\ & \present_state.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datad => \present_state.s9~q\,
	combout => \next_state.s10~0_combout\);

-- Location: FF_X1_Y21_N31
\present_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \next_state.s10~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s10~q\);

-- Location: LCCOMB_X1_Y21_N24
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\present_state.s21~q\) # ((!\K~input_o\ & \present_state.s10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datac => \present_state.s21~q\,
	datad => \present_state.s10~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X1_Y21_N25
\present_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s11~q\);

-- Location: FF_X1_Y21_N1
\present_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s11~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s12~q\);

-- Location: FF_X1_Y21_N15
\present_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s12~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s13~q\);

-- Location: FF_X1_Y21_N11
\present_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s13~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s14~q\);

-- Location: FF_X1_Y21_N23
\present_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s14~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s15~q\);

-- Location: FF_X1_Y21_N29
\present_state.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s15~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s16~q\);

-- Location: FF_X1_Y21_N9
\present_state.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \present_state.s16~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s17~q\);

-- Location: LCCOMB_X2_Y21_N22
\present_state.s18~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \present_state.s18~feeder_combout\ = \present_state.s17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.s17~q\,
	combout => \present_state.s18~feeder_combout\);

-- Location: FF_X2_Y21_N23
\present_state.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	d => \present_state.s18~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s18~q\);

-- Location: LCCOMB_X2_Y21_N28
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\K~input_o\ & ((\present_state.s20~q\) # ((\P~input_o\ & \present_state.s19~q\)))) # (!\K~input_o\ & (((\P~input_o\ & \present_state.s19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K~input_o\,
	datab => \present_state.s20~q\,
	datac => \P~input_o\,
	datad => \present_state.s19~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X2_Y21_N20
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((!\P~input_o\ & \present_state.s18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P~input_o\,
	datac => \present_state.s18~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X2_Y21_N21
\present_state.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => dcnt(22),
	d => \Selector3~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s20~q\);

-- Location: LCCOMB_X2_Y21_N0
\next_state.s21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s21~0_combout\ = (\present_state.s20~q\ & !\K~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s20~q\,
	datac => \K~input_o\,
	combout => \next_state.s21~0_combout\);

-- Location: FF_X1_Y21_N21
\present_state.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dcnt[22]~clkctrl_outclk\,
	asdata => \next_state.s21~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s21~q\);

-- Location: LCCOMB_X1_Y21_N6
\L~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~0_combout\ = (\present_state.s21~q\) # (\present_state.s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s21~q\,
	datad => \present_state.s10~q\,
	combout => \L~0_combout\);

-- Location: LCCOMB_X1_Y21_N8
\L~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~1_combout\ = (\present_state.s11~q\) # (\present_state.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s11~q\,
	datad => \present_state.s9~q\,
	combout => \L~1_combout\);

-- Location: LCCOMB_X1_Y21_N0
\L~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~2_combout\ = (\present_state.s8~q\) # (\present_state.s12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s8~q\,
	datac => \present_state.s12~q\,
	combout => \L~2_combout\);

-- Location: LCCOMB_X1_Y21_N14
\L~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~3_combout\ = (\present_state.s13~q\) # (\present_state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s13~q\,
	datad => \present_state.s7~q\,
	combout => \L~3_combout\);

-- Location: LCCOMB_X1_Y21_N10
\L~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~4_combout\ = (\present_state.s6~q\) # (\present_state.s14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.s6~q\,
	datac => \present_state.s14~q\,
	combout => \L~4_combout\);

-- Location: LCCOMB_X1_Y21_N22
\L~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~5_combout\ = (\present_state.s5~q\) # (\present_state.s15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.s5~q\,
	datac => \present_state.s15~q\,
	combout => \L~5_combout\);

-- Location: LCCOMB_X1_Y21_N28
\L~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~6_combout\ = (\present_state.s16~q\) # (\present_state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s16~q\,
	datad => \present_state.s4~q\,
	combout => \L~6_combout\);

-- Location: LCCOMB_X1_Y21_N16
\L~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~7_combout\ = (\present_state.s3~q\) # (\present_state.s17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s3~q\,
	datab => \present_state.s17~q\,
	combout => \L~7_combout\);

-- Location: LCCOMB_X1_Y21_N4
\L~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~8_combout\ = (\present_state.s2~q\) # (\present_state.s18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s2~q\,
	datad => \present_state.s18~q\,
	combout => \L~8_combout\);

-- Location: LCCOMB_X2_Y21_N10
\L~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L~9_combout\ = (\present_state.s19~q\) # (\present_state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s19~q\,
	datac => \present_state.s1~q\,
	combout => \L~9_combout\);

-- Location: LCCOMB_X1_Y21_N20
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\present_state.s22~q\) # (!\present_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.s0~q\,
	datad => \present_state.s22~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
plus : cycloneiii_lcell_comb
-- Equation(s):
-- \plus~combout\ = (\WideOr0~0_combout\ & ((\present_state.s22~q\))) # (!\WideOr0~0_combout\ & (\plus~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plus~combout\,
	datab => \WideOr0~0_combout\,
	datad => \present_state.s22~q\,
	combout => \plus~combout\);

-- Location: CLKCTRL_G4
\plus~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \plus~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \plus~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y28_N2
\HEX0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = (point(0)) # (point(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(0),
	datad => point(2),
	combout => \HEX0~3_combout\);

-- Location: LCCOMB_X36_Y28_N12
\point[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \point[0]~0_combout\ = !\HEX0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HEX0~3_combout\,
	combout => \point[0]~0_combout\);

-- Location: LCCOMB_X2_Y21_N26
\WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\present_state.s20~q\) # (!\present_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.s20~q\,
	datad => \present_state.s0~q\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X2_Y21_N30
plus1 : cycloneiii_lcell_comb
-- Equation(s):
-- \plus1~combout\ = (\WideOr5~0_combout\ & ((\present_state.s20~q\))) # (!\WideOr5~0_combout\ & (\plus1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plus1~combout\,
	datac => \WideOr5~0_combout\,
	datad => \present_state.s20~q\,
	combout => \plus1~combout\);

-- Location: CLKCTRL_G2
\plus1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \plus1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \plus1~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y28_N20
\HEX3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~3_combout\ = (point1(0)) # (point1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => point1(0),
	datad => point1(2),
	combout => \HEX3~3_combout\);

-- Location: LCCOMB_X38_Y28_N24
\point1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \point1[0]~0_combout\ = !\HEX3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX3~3_combout\,
	combout => \point1[0]~0_combout\);

-- Location: LCCOMB_X38_Y28_N10
\ch0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ch0~1_combout\ = (\ch0~q\) # ((point(2) & (\reset~input_o\ & !\ch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(2),
	datab => \reset~input_o\,
	datac => \ch0~q\,
	datad => \ch1~q\,
	combout => \ch0~1_combout\);

-- Location: LCCOMB_X38_Y28_N6
\ch0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ch0~2_combout\ = (\reset~input_o\ & (!\ch1~q\ & \ch0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \ch1~q\,
	datad => \ch0~q\,
	combout => \ch0~2_combout\);

-- Location: FF_X38_Y28_N11
ch0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus~clkctrl_outclk\,
	d => \ch0~1_combout\,
	clrn => \ALT_INV_ch0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ch0~q\);

-- Location: LCCOMB_X38_Y28_N0
\ch1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ch1~0_combout\ = (\ch0~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ch0~q\,
	combout => \ch1~0_combout\);

-- Location: FF_X38_Y28_N25
\point1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus1~clkctrl_outclk\,
	d => \point1[0]~0_combout\,
	clrn => \ALT_INV_ch1~0_combout\,
	ena => \ALT_INV_ch1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point1(0));

-- Location: LCCOMB_X38_Y28_N26
\HEX3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~6_combout\ = (!point1(2) & (point1(0) $ (point1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point1(0),
	datac => point1(1),
	datad => point1(2),
	combout => \HEX3~6_combout\);

-- Location: FF_X38_Y28_N27
\point1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus1~clkctrl_outclk\,
	d => \HEX3~6_combout\,
	clrn => \ALT_INV_ch1~0_combout\,
	ena => \ALT_INV_ch1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point1(1));

-- Location: LCCOMB_X38_Y28_N28
\Equal12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (point1(1) & (!point1(2) & point1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point1(1),
	datac => point1(2),
	datad => point1(0),
	combout => \Equal12~0_combout\);

-- Location: FF_X38_Y28_N29
\point1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus1~clkctrl_outclk\,
	d => \Equal12~0_combout\,
	clrn => \ALT_INV_ch1~0_combout\,
	ena => \ALT_INV_ch1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point1(2));

-- Location: LCCOMB_X37_Y28_N16
\ch1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ch1~1_combout\ = (\ch1~q\) # ((\reset~input_o\ & (point1(2) & !\ch0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => point1(2),
	datac => \ch1~q\,
	datad => \ch0~q\,
	combout => \ch1~1_combout\);

-- Location: LCCOMB_X37_Y28_N20
\ch1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ch1~2_combout\ = (\reset~input_o\ & (!\ch0~q\ & \ch1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \ch0~q\,
	datad => \ch1~q\,
	combout => \ch1~2_combout\);

-- Location: FF_X37_Y28_N17
ch1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus1~clkctrl_outclk\,
	d => \ch1~1_combout\,
	clrn => \ALT_INV_ch1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ch1~q\);

-- Location: LCCOMB_X36_Y28_N0
\ch0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ch0~0_combout\ = (\ch1~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \ch1~q\,
	combout => \ch0~0_combout\);

-- Location: FF_X36_Y28_N13
\point[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus~clkctrl_outclk\,
	d => \point[0]~0_combout\,
	clrn => \ALT_INV_ch0~0_combout\,
	ena => \ALT_INV_ch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(0));

-- Location: LCCOMB_X36_Y28_N18
\HEX0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = (!point(2) & (point(0) $ (point(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(0),
	datac => point(1),
	datad => point(2),
	combout => \HEX0~6_combout\);

-- Location: FF_X36_Y28_N19
\point[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus~clkctrl_outclk\,
	d => \HEX0~6_combout\,
	clrn => \ALT_INV_ch0~0_combout\,
	ena => \ALT_INV_ch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(1));

-- Location: LCCOMB_X36_Y28_N24
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (point(0) & (!point(2) & point(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(0),
	datac => point(2),
	datad => point(1),
	combout => \Equal6~0_combout\);

-- Location: FF_X36_Y28_N25
\point[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus~clkctrl_outclk\,
	d => \Equal6~0_combout\,
	clrn => \ALT_INV_ch0~0_combout\,
	ena => \ALT_INV_ch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(2));

-- Location: LCCOMB_X29_Y28_N4
\HEX0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = point(2) $ (((point(0) & !point(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(2),
	datac => point(0),
	datad => point(1),
	combout => \HEX0~0_combout\);

-- Location: LCCOMB_X29_Y28_N22
\HEX0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = ((!point(0) & !point(1))) # (!point(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(2),
	datac => point(0),
	datad => point(1),
	combout => \HEX0~1_combout\);

-- Location: LCCOMB_X29_Y28_N28
\HEX0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = (point(1) & ((point(2)) # (!point(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(2),
	datac => point(0),
	datad => point(1),
	combout => \HEX0~2_combout\);

-- Location: LCCOMB_X29_Y28_N10
\HEX0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = (point(1)) # ((!point(2) & point(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point(2),
	datac => point(0),
	datad => point(1),
	combout => \HEX0~4_combout\);

-- Location: LCCOMB_X29_Y28_N12
\HEX0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = point(2) $ (!point(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => point(2),
	datad => point(1),
	combout => \HEX0~5_combout\);

-- Location: LCCOMB_X37_Y28_N12
\HEX3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~0_combout\ = point1(2) $ (((point1(0) & !point1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => point1(2),
	datac => point1(0),
	datad => point1(1),
	combout => \HEX3~0_combout\);

-- Location: LCCOMB_X38_Y28_N22
\HEX3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~1_combout\ = ((!point1(0) & !point1(1))) # (!point1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point1(0),
	datac => point1(1),
	datad => point1(2),
	combout => \HEX3~1_combout\);

-- Location: LCCOMB_X37_Y28_N18
\HEX3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~2_combout\ = (point1(1) & ((point1(2)) # (!point1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => point1(2),
	datac => point1(0),
	datad => point1(1),
	combout => \HEX3~2_combout\);

-- Location: LCCOMB_X37_Y28_N24
\HEX3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~4_combout\ = (point1(1)) # ((!point1(2) & point1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => point1(2),
	datac => point1(0),
	datad => point1(1),
	combout => \HEX3~4_combout\);

-- Location: LCCOMB_X38_Y28_N30
\HEX3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~5_combout\ = point1(1) $ (!point1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => point1(1),
	datad => point1(2),
	combout => \HEX3~5_combout\);

-- Location: LCCOMB_X36_Y28_N22
\dot0[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot0[0]~2_combout\ = dot0(0) $ (((!\ch0~q\ & (point(2) & !\ch1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch0~q\,
	datab => point(2),
	datac => dot0(0),
	datad => \ch1~q\,
	combout => \dot0[0]~2_combout\);

-- Location: FF_X36_Y28_N23
\dot0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus~clkctrl_outclk\,
	d => \dot0[0]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dot0(0));

-- Location: LCCOMB_X36_Y28_N10
\dot0[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot0[1]~0_combout\ = (\ch0~q\) # (!dot0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dot0(0),
	datad => \ch0~q\,
	combout => \dot0[1]~0_combout\);

-- Location: LCCOMB_X36_Y28_N4
\dot0[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot0[1]~1_combout\ = dot0(1) $ (((!\dot0[1]~0_combout\ & (point(2) & !\ch1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dot0[1]~0_combout\,
	datab => point(2),
	datac => dot0(1),
	datad => \ch1~q\,
	combout => \dot0[1]~1_combout\);

-- Location: FF_X36_Y28_N5
\dot0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus~clkctrl_outclk\,
	d => \dot0[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dot0(1));

-- Location: LCCOMB_X29_Y28_N2
\v0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v0~0_combout\ = dot0(1) $ (dot0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dot0(1),
	datad => dot0(0),
	combout => \v0~0_combout\);

-- Location: LCCOMB_X29_Y28_N20
\Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (dot0(1) & !dot0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dot0(1),
	datad => dot0(0),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X37_Y28_N28
\dot1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot1[0]~2_combout\ = dot1(0) $ (((!\ch1~q\ & (point1(2) & !\ch0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch1~q\,
	datab => point1(2),
	datac => dot1(0),
	datad => \ch0~q\,
	combout => \dot1[0]~2_combout\);

-- Location: FF_X37_Y28_N29
\dot1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus1~clkctrl_outclk\,
	d => \dot1[0]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dot1(0));

-- Location: LCCOMB_X37_Y28_N10
\dot1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot1[1]~0_combout\ = (\ch1~q\) # (!dot1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ch1~q\,
	datad => dot1(0),
	combout => \dot1[1]~0_combout\);

-- Location: LCCOMB_X37_Y28_N14
\dot1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot1[1]~1_combout\ = dot1(1) $ (((!\dot1[1]~0_combout\ & (point1(2) & !\ch0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dot1[1]~0_combout\,
	datab => point1(2),
	datac => dot1(1),
	datad => \ch0~q\,
	combout => \dot1[1]~1_combout\);

-- Location: FF_X37_Y28_N15
\dot1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \plus1~clkctrl_outclk\,
	d => \dot1[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dot1(1));

-- Location: LCCOMB_X38_Y28_N12
\v2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v2~0_combout\ = dot1(0) $ (dot1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dot1(0),
	datad => dot1(1),
	combout => \v2~0_combout\);

-- Location: LCCOMB_X37_Y28_N22
\Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (dot1(1) & !dot1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dot1(1),
	datad => dot1(0),
	combout => \Equal15~0_combout\);

ww_L(9) <= \L[9]~output_o\;

ww_L(8) <= \L[8]~output_o\;

ww_L(7) <= \L[7]~output_o\;

ww_L(6) <= \L[6]~output_o\;

ww_L(5) <= \L[5]~output_o\;

ww_L(4) <= \L[4]~output_o\;

ww_L(3) <= \L[3]~output_o\;

ww_L(2) <= \L[2]~output_o\;

ww_L(1) <= \L[1]~output_o\;

ww_L(0) <= \L[0]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_v0 <= \v0~output_o\;

ww_v1 <= \v1~output_o\;

ww_v2 <= \v2~output_o\;

ww_v3 <= \v3~output_o\;
END structure;


