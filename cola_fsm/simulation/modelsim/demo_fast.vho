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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/02/2023 17:02:18"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	demo IS
    PORT (
	clk : IN std_logic;
	key : IN std_logic_vector(1 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END demo;

-- Design Ports Information
-- key[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led[0]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[1]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[2]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[3]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[6]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[7]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF demo IS
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
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key1|cnt_20ms[2]~24_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[6]~32_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[11]~42_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[12]~44_combout\ : std_logic;
SIGNAL \key1|Equal1~3_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[12]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \key1|cnt_20ms[0]~20_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[0]~21\ : std_logic;
SIGNAL \key1|cnt_20ms[1]~22_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[1]~23\ : std_logic;
SIGNAL \key1|cnt_20ms[2]~25\ : std_logic;
SIGNAL \key1|cnt_20ms[3]~26_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[3]~27\ : std_logic;
SIGNAL \key1|cnt_20ms[4]~29\ : std_logic;
SIGNAL \key1|cnt_20ms[5]~30_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[5]~31\ : std_logic;
SIGNAL \key1|cnt_20ms[6]~33\ : std_logic;
SIGNAL \key1|cnt_20ms[7]~34_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[7]~35\ : std_logic;
SIGNAL \key1|cnt_20ms[8]~36_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[8]~37\ : std_logic;
SIGNAL \key1|cnt_20ms[9]~38_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[9]~39\ : std_logic;
SIGNAL \key1|cnt_20ms[10]~40_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[10]~41\ : std_logic;
SIGNAL \key1|cnt_20ms[11]~43\ : std_logic;
SIGNAL \key1|cnt_20ms[12]~45\ : std_logic;
SIGNAL \key1|cnt_20ms[13]~46_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[13]~47\ : std_logic;
SIGNAL \key1|cnt_20ms[14]~48_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[14]~49\ : std_logic;
SIGNAL \key1|cnt_20ms[15]~50_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[15]~51\ : std_logic;
SIGNAL \key1|cnt_20ms[16]~52_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[16]~53\ : std_logic;
SIGNAL \key1|cnt_20ms[17]~54_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[17]~55\ : std_logic;
SIGNAL \key1|cnt_20ms[18]~56_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[18]~57\ : std_logic;
SIGNAL \key1|cnt_20ms[19]~58_combout\ : std_logic;
SIGNAL \key1|Equal1~0_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[4]~28_combout\ : std_logic;
SIGNAL \key1|Equal1~1_combout\ : std_logic;
SIGNAL \key1|Equal1~2_combout\ : std_logic;
SIGNAL \key1|Equal1~4_combout\ : std_logic;
SIGNAL \key1|Equal1~5_combout\ : std_logic;
SIGNAL \key1|always0~0_combout\ : std_logic;
SIGNAL \key1|Equal1~6_combout\ : std_logic;
SIGNAL \key1|key_flag~regout\ : std_logic;
SIGNAL \state.TWO~regout\ : std_logic;
SIGNAL \state.THREE~regout\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~regout\ : std_logic;
SIGNAL \state.ONE~0_combout\ : std_logic;
SIGNAL \state.ONE~regout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \led[0]~1_combout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;
SIGNAL \key1|cnt_20ms\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_key <= key;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X2_Y9_N17
\key1|cnt_20ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[2]~24_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(2));

-- Location: LCFF_X2_Y9_N25
\key1|cnt_20ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[6]~32_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(6));

-- Location: LCFF_X1_Y9_N21
\key1|cnt_20ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \key1|cnt_20ms[11]~42_combout\,
	sclr => \key~combout\(0),
	sload => VCC,
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(11));

-- Location: LCFF_X2_Y9_N9
\key1|cnt_20ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[12]~feeder_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(12));

-- Location: LCCOMB_X2_Y9_N16
\key1|cnt_20ms[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[2]~24_combout\ = (\key1|cnt_20ms\(2) & (\key1|cnt_20ms[1]~23\ $ (GND))) # (!\key1|cnt_20ms\(2) & (!\key1|cnt_20ms[1]~23\ & VCC))
-- \key1|cnt_20ms[2]~25\ = CARRY((\key1|cnt_20ms\(2) & !\key1|cnt_20ms[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(2),
	datad => VCC,
	cin => \key1|cnt_20ms[1]~23\,
	combout => \key1|cnt_20ms[2]~24_combout\,
	cout => \key1|cnt_20ms[2]~25\);

-- Location: LCCOMB_X2_Y9_N24
\key1|cnt_20ms[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[6]~32_combout\ = (\key1|cnt_20ms\(6) & (\key1|cnt_20ms[5]~31\ $ (GND))) # (!\key1|cnt_20ms\(6) & (!\key1|cnt_20ms[5]~31\ & VCC))
-- \key1|cnt_20ms[6]~33\ = CARRY((\key1|cnt_20ms\(6) & !\key1|cnt_20ms[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(6),
	datad => VCC,
	cin => \key1|cnt_20ms[5]~31\,
	combout => \key1|cnt_20ms[6]~32_combout\,
	cout => \key1|cnt_20ms[6]~33\);

-- Location: LCCOMB_X2_Y8_N2
\key1|cnt_20ms[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[11]~42_combout\ = (\key1|cnt_20ms\(11) & (!\key1|cnt_20ms[10]~41\)) # (!\key1|cnt_20ms\(11) & ((\key1|cnt_20ms[10]~41\) # (GND)))
-- \key1|cnt_20ms[11]~43\ = CARRY((!\key1|cnt_20ms[10]~41\) # (!\key1|cnt_20ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(11),
	datad => VCC,
	cin => \key1|cnt_20ms[10]~41\,
	combout => \key1|cnt_20ms[11]~42_combout\,
	cout => \key1|cnt_20ms[11]~43\);

-- Location: LCCOMB_X2_Y8_N4
\key1|cnt_20ms[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[12]~44_combout\ = (\key1|cnt_20ms\(12) & (\key1|cnt_20ms[11]~43\ $ (GND))) # (!\key1|cnt_20ms\(12) & (!\key1|cnt_20ms[11]~43\ & VCC))
-- \key1|cnt_20ms[12]~45\ = CARRY((\key1|cnt_20ms\(12) & !\key1|cnt_20ms[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(12),
	datad => VCC,
	cin => \key1|cnt_20ms[11]~43\,
	combout => \key1|cnt_20ms[12]~44_combout\,
	cout => \key1|cnt_20ms[12]~45\);

-- Location: LCCOMB_X2_Y9_N6
\key1|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~3_combout\ = (!\key1|cnt_20ms\(12) & (!\key1|cnt_20ms\(10) & (!\key1|cnt_20ms\(11) & \key1|cnt_20ms\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(12),
	datab => \key1|cnt_20ms\(10),
	datac => \key1|cnt_20ms\(11),
	datad => \key1|cnt_20ms\(9),
	combout => \key1|Equal1~3_combout\);

-- Location: LCCOMB_X2_Y9_N8
\key1|cnt_20ms[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[12]~feeder_combout\ = \key1|cnt_20ms[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key1|cnt_20ms[12]~44_combout\,
	combout => \key1|cnt_20ms[12]~feeder_combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y9_N12
\key1|cnt_20ms[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[0]~20_combout\ = \key1|cnt_20ms\(0) $ (VCC)
-- \key1|cnt_20ms[0]~21\ = CARRY(\key1|cnt_20ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(0),
	datad => VCC,
	combout => \key1|cnt_20ms[0]~20_combout\,
	cout => \key1|cnt_20ms[0]~21\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: LCCOMB_X2_Y9_N14
\key1|cnt_20ms[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[1]~22_combout\ = (\key1|cnt_20ms\(1) & (!\key1|cnt_20ms[0]~21\)) # (!\key1|cnt_20ms\(1) & ((\key1|cnt_20ms[0]~21\) # (GND)))
-- \key1|cnt_20ms[1]~23\ = CARRY((!\key1|cnt_20ms[0]~21\) # (!\key1|cnt_20ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(1),
	datad => VCC,
	cin => \key1|cnt_20ms[0]~21\,
	combout => \key1|cnt_20ms[1]~22_combout\,
	cout => \key1|cnt_20ms[1]~23\);

-- Location: LCFF_X2_Y9_N15
\key1|cnt_20ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[1]~22_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(1));

-- Location: LCCOMB_X2_Y9_N18
\key1|cnt_20ms[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[3]~26_combout\ = (\key1|cnt_20ms\(3) & (!\key1|cnt_20ms[2]~25\)) # (!\key1|cnt_20ms\(3) & ((\key1|cnt_20ms[2]~25\) # (GND)))
-- \key1|cnt_20ms[3]~27\ = CARRY((!\key1|cnt_20ms[2]~25\) # (!\key1|cnt_20ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(3),
	datad => VCC,
	cin => \key1|cnt_20ms[2]~25\,
	combout => \key1|cnt_20ms[3]~26_combout\,
	cout => \key1|cnt_20ms[3]~27\);

-- Location: LCFF_X2_Y9_N19
\key1|cnt_20ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[3]~26_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(3));

-- Location: LCCOMB_X2_Y9_N20
\key1|cnt_20ms[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[4]~28_combout\ = (\key1|cnt_20ms\(4) & (\key1|cnt_20ms[3]~27\ $ (GND))) # (!\key1|cnt_20ms\(4) & (!\key1|cnt_20ms[3]~27\ & VCC))
-- \key1|cnt_20ms[4]~29\ = CARRY((\key1|cnt_20ms\(4) & !\key1|cnt_20ms[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(4),
	datad => VCC,
	cin => \key1|cnt_20ms[3]~27\,
	combout => \key1|cnt_20ms[4]~28_combout\,
	cout => \key1|cnt_20ms[4]~29\);

-- Location: LCCOMB_X2_Y9_N22
\key1|cnt_20ms[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[5]~30_combout\ = (\key1|cnt_20ms\(5) & (!\key1|cnt_20ms[4]~29\)) # (!\key1|cnt_20ms\(5) & ((\key1|cnt_20ms[4]~29\) # (GND)))
-- \key1|cnt_20ms[5]~31\ = CARRY((!\key1|cnt_20ms[4]~29\) # (!\key1|cnt_20ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(5),
	datad => VCC,
	cin => \key1|cnt_20ms[4]~29\,
	combout => \key1|cnt_20ms[5]~30_combout\,
	cout => \key1|cnt_20ms[5]~31\);

-- Location: LCFF_X2_Y9_N23
\key1|cnt_20ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[5]~30_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(5));

-- Location: LCCOMB_X2_Y9_N26
\key1|cnt_20ms[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[7]~34_combout\ = (\key1|cnt_20ms\(7) & (!\key1|cnt_20ms[6]~33\)) # (!\key1|cnt_20ms\(7) & ((\key1|cnt_20ms[6]~33\) # (GND)))
-- \key1|cnt_20ms[7]~35\ = CARRY((!\key1|cnt_20ms[6]~33\) # (!\key1|cnt_20ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(7),
	datad => VCC,
	cin => \key1|cnt_20ms[6]~33\,
	combout => \key1|cnt_20ms[7]~34_combout\,
	cout => \key1|cnt_20ms[7]~35\);

-- Location: LCFF_X2_Y9_N27
\key1|cnt_20ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[7]~34_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(7));

-- Location: LCCOMB_X2_Y9_N28
\key1|cnt_20ms[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[8]~36_combout\ = (\key1|cnt_20ms\(8) & (\key1|cnt_20ms[7]~35\ $ (GND))) # (!\key1|cnt_20ms\(8) & (!\key1|cnt_20ms[7]~35\ & VCC))
-- \key1|cnt_20ms[8]~37\ = CARRY((\key1|cnt_20ms\(8) & !\key1|cnt_20ms[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(8),
	datad => VCC,
	cin => \key1|cnt_20ms[7]~35\,
	combout => \key1|cnt_20ms[8]~36_combout\,
	cout => \key1|cnt_20ms[8]~37\);

-- Location: LCFF_X2_Y9_N29
\key1|cnt_20ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[8]~36_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(8));

-- Location: LCCOMB_X2_Y9_N30
\key1|cnt_20ms[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[9]~38_combout\ = (\key1|cnt_20ms\(9) & (!\key1|cnt_20ms[8]~37\)) # (!\key1|cnt_20ms\(9) & ((\key1|cnt_20ms[8]~37\) # (GND)))
-- \key1|cnt_20ms[9]~39\ = CARRY((!\key1|cnt_20ms[8]~37\) # (!\key1|cnt_20ms\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(9),
	datad => VCC,
	cin => \key1|cnt_20ms[8]~37\,
	combout => \key1|cnt_20ms[9]~38_combout\,
	cout => \key1|cnt_20ms[9]~39\);

-- Location: LCFF_X2_Y9_N31
\key1|cnt_20ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[9]~38_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(9));

-- Location: LCCOMB_X2_Y8_N0
\key1|cnt_20ms[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[10]~40_combout\ = (\key1|cnt_20ms\(10) & (\key1|cnt_20ms[9]~39\ $ (GND))) # (!\key1|cnt_20ms\(10) & (!\key1|cnt_20ms[9]~39\ & VCC))
-- \key1|cnt_20ms[10]~41\ = CARRY((\key1|cnt_20ms\(10) & !\key1|cnt_20ms[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(10),
	datad => VCC,
	cin => \key1|cnt_20ms[9]~39\,
	combout => \key1|cnt_20ms[10]~40_combout\,
	cout => \key1|cnt_20ms[10]~41\);

-- Location: LCFF_X2_Y8_N1
\key1|cnt_20ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[10]~40_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(10));

-- Location: LCCOMB_X2_Y8_N6
\key1|cnt_20ms[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[13]~46_combout\ = (\key1|cnt_20ms\(13) & (!\key1|cnt_20ms[12]~45\)) # (!\key1|cnt_20ms\(13) & ((\key1|cnt_20ms[12]~45\) # (GND)))
-- \key1|cnt_20ms[13]~47\ = CARRY((!\key1|cnt_20ms[12]~45\) # (!\key1|cnt_20ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(13),
	datad => VCC,
	cin => \key1|cnt_20ms[12]~45\,
	combout => \key1|cnt_20ms[13]~46_combout\,
	cout => \key1|cnt_20ms[13]~47\);

-- Location: LCFF_X2_Y8_N7
\key1|cnt_20ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[13]~46_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(13));

-- Location: LCCOMB_X2_Y8_N8
\key1|cnt_20ms[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[14]~48_combout\ = (\key1|cnt_20ms\(14) & (\key1|cnt_20ms[13]~47\ $ (GND))) # (!\key1|cnt_20ms\(14) & (!\key1|cnt_20ms[13]~47\ & VCC))
-- \key1|cnt_20ms[14]~49\ = CARRY((\key1|cnt_20ms\(14) & !\key1|cnt_20ms[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(14),
	datad => VCC,
	cin => \key1|cnt_20ms[13]~47\,
	combout => \key1|cnt_20ms[14]~48_combout\,
	cout => \key1|cnt_20ms[14]~49\);

-- Location: LCFF_X2_Y8_N9
\key1|cnt_20ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[14]~48_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(14));

-- Location: LCCOMB_X2_Y8_N10
\key1|cnt_20ms[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[15]~50_combout\ = (\key1|cnt_20ms\(15) & (!\key1|cnt_20ms[14]~49\)) # (!\key1|cnt_20ms\(15) & ((\key1|cnt_20ms[14]~49\) # (GND)))
-- \key1|cnt_20ms[15]~51\ = CARRY((!\key1|cnt_20ms[14]~49\) # (!\key1|cnt_20ms\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(15),
	datad => VCC,
	cin => \key1|cnt_20ms[14]~49\,
	combout => \key1|cnt_20ms[15]~50_combout\,
	cout => \key1|cnt_20ms[15]~51\);

-- Location: LCFF_X2_Y8_N11
\key1|cnt_20ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[15]~50_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(15));

-- Location: LCCOMB_X2_Y8_N12
\key1|cnt_20ms[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[16]~52_combout\ = (\key1|cnt_20ms\(16) & (\key1|cnt_20ms[15]~51\ $ (GND))) # (!\key1|cnt_20ms\(16) & (!\key1|cnt_20ms[15]~51\ & VCC))
-- \key1|cnt_20ms[16]~53\ = CARRY((\key1|cnt_20ms\(16) & !\key1|cnt_20ms[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(16),
	datad => VCC,
	cin => \key1|cnt_20ms[15]~51\,
	combout => \key1|cnt_20ms[16]~52_combout\,
	cout => \key1|cnt_20ms[16]~53\);

-- Location: LCFF_X2_Y8_N13
\key1|cnt_20ms[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[16]~52_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(16));

-- Location: LCCOMB_X2_Y8_N14
\key1|cnt_20ms[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[17]~54_combout\ = (\key1|cnt_20ms\(17) & (!\key1|cnt_20ms[16]~53\)) # (!\key1|cnt_20ms\(17) & ((\key1|cnt_20ms[16]~53\) # (GND)))
-- \key1|cnt_20ms[17]~55\ = CARRY((!\key1|cnt_20ms[16]~53\) # (!\key1|cnt_20ms\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(17),
	datad => VCC,
	cin => \key1|cnt_20ms[16]~53\,
	combout => \key1|cnt_20ms[17]~54_combout\,
	cout => \key1|cnt_20ms[17]~55\);

-- Location: LCFF_X2_Y8_N15
\key1|cnt_20ms[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[17]~54_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(17));

-- Location: LCCOMB_X2_Y8_N16
\key1|cnt_20ms[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[18]~56_combout\ = (\key1|cnt_20ms\(18) & (\key1|cnt_20ms[17]~55\ $ (GND))) # (!\key1|cnt_20ms\(18) & (!\key1|cnt_20ms[17]~55\ & VCC))
-- \key1|cnt_20ms[18]~57\ = CARRY((\key1|cnt_20ms\(18) & !\key1|cnt_20ms[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(18),
	datad => VCC,
	cin => \key1|cnt_20ms[17]~55\,
	combout => \key1|cnt_20ms[18]~56_combout\,
	cout => \key1|cnt_20ms[18]~57\);

-- Location: LCFF_X2_Y8_N17
\key1|cnt_20ms[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[18]~56_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(18));

-- Location: LCCOMB_X2_Y8_N18
\key1|cnt_20ms[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[19]~58_combout\ = \key1|cnt_20ms[18]~57\ $ (\key1|cnt_20ms\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key1|cnt_20ms\(19),
	cin => \key1|cnt_20ms[18]~57\,
	combout => \key1|cnt_20ms[19]~58_combout\);

-- Location: LCFF_X2_Y8_N19
\key1|cnt_20ms[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[19]~58_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(19));

-- Location: LCCOMB_X2_Y8_N28
\key1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~0_combout\ = (\key1|cnt_20ms\(17) & (\key1|cnt_20ms\(18) & \key1|cnt_20ms\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(17),
	datac => \key1|cnt_20ms\(18),
	datad => \key1|cnt_20ms\(19),
	combout => \key1|Equal1~0_combout\);

-- Location: LCFF_X2_Y9_N21
\key1|cnt_20ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[4]~28_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(4));

-- Location: LCCOMB_X2_Y9_N2
\key1|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~1_combout\ = (\key1|cnt_20ms\(2) & (\key1|cnt_20ms\(1) & (\key1|cnt_20ms\(4) & \key1|cnt_20ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(2),
	datab => \key1|cnt_20ms\(1),
	datac => \key1|cnt_20ms\(4),
	datad => \key1|cnt_20ms\(3),
	combout => \key1|Equal1~1_combout\);

-- Location: LCCOMB_X2_Y9_N4
\key1|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~2_combout\ = (!\key1|cnt_20ms\(6) & (!\key1|cnt_20ms\(7) & (\key1|cnt_20ms\(5) & !\key1|cnt_20ms\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(6),
	datab => \key1|cnt_20ms\(7),
	datac => \key1|cnt_20ms\(5),
	datad => \key1|cnt_20ms\(8),
	combout => \key1|Equal1~2_combout\);

-- Location: LCCOMB_X2_Y8_N26
\key1|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~4_combout\ = (\key1|cnt_20ms\(16) & (\key1|cnt_20ms\(14) & (!\key1|cnt_20ms\(15) & !\key1|cnt_20ms\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(16),
	datab => \key1|cnt_20ms\(14),
	datac => \key1|cnt_20ms\(15),
	datad => \key1|cnt_20ms\(13),
	combout => \key1|Equal1~4_combout\);

-- Location: LCCOMB_X2_Y9_N0
\key1|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~5_combout\ = (\key1|Equal1~3_combout\ & (\key1|Equal1~1_combout\ & (\key1|Equal1~2_combout\ & \key1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|Equal1~3_combout\,
	datab => \key1|Equal1~1_combout\,
	datac => \key1|Equal1~2_combout\,
	datad => \key1|Equal1~4_combout\,
	combout => \key1|Equal1~5_combout\);

-- Location: LCCOMB_X2_Y9_N10
\key1|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|always0~0_combout\ = (\key~combout\(0)) # (((!\key1|Equal1~5_combout\) # (!\key1|Equal1~0_combout\)) # (!\key1|cnt_20ms\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key1|cnt_20ms\(0),
	datac => \key1|Equal1~0_combout\,
	datad => \key1|Equal1~5_combout\,
	combout => \key1|always0~0_combout\);

-- Location: LCFF_X2_Y9_N13
\key1|cnt_20ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[0]~20_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(0));

-- Location: LCCOMB_X1_Y9_N26
\key1|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~6_combout\ = (!\key1|cnt_20ms\(0) & (\key1|Equal1~5_combout\ & \key1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(0),
	datac => \key1|Equal1~5_combout\,
	datad => \key1|Equal1~0_combout\,
	combout => \key1|Equal1~6_combout\);

-- Location: LCFF_X1_Y9_N27
\key1|key_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|key_flag~regout\);

-- Location: LCFF_X1_Y8_N15
\state.TWO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.ONE~regout\,
	sload => VCC,
	ena => \key1|key_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.TWO~regout\);

-- Location: LCFF_X1_Y8_N29
\state.THREE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.TWO~regout\,
	sload => VCC,
	ena => \key1|key_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.THREE~regout\);

-- Location: LCCOMB_X1_Y8_N30
\state.IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = !\state.THREE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.THREE~regout\,
	combout => \state.IDLE~0_combout\);

-- Location: LCFF_X1_Y8_N31
\state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.IDLE~0_combout\,
	ena => \key1|key_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.IDLE~regout\);

-- Location: LCCOMB_X1_Y8_N20
\state.ONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.ONE~0_combout\ = !\state.IDLE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.IDLE~regout\,
	combout => \state.ONE~0_combout\);

-- Location: LCFF_X1_Y8_N21
\state.ONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.ONE~0_combout\,
	ena => \key1|key_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.ONE~regout\);

-- Location: LCCOMB_X1_Y8_N18
\led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (!\state.ONE~regout\ & (!\state.TWO~regout\ & ((!\key1|key_flag~regout\) # (!\state.THREE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ONE~regout\,
	datab => \state.THREE~regout\,
	datac => \state.TWO~regout\,
	datad => \key1|key_flag~regout\,
	combout => \led~0_combout\);

-- Location: LCCOMB_X1_Y8_N12
\led[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \led[0]~1_combout\ = (!\led~0_combout\) # (!\state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~regout\,
	datad => \led~0_combout\,
	combout => \led[0]~1_combout\);

-- Location: LCFF_X1_Y8_N13
\led[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.ONE~regout\,
	sload => VCC,
	ena => \led[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y8_N26
\led~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \led~2_combout\ = (!\state.ONE~regout\ & ((!\key1|key_flag~regout\) # (!\state.THREE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.THREE~regout\,
	datac => \state.ONE~regout\,
	datad => \key1|key_flag~regout\,
	combout => \led~2_combout\);

-- Location: LCFF_X1_Y8_N27
\led[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led~2_combout\,
	ena => \led[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y8_N0
\always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\state.THREE~regout\ & \key1|key_flag~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.THREE~regout\,
	datad => \key1|key_flag~regout\,
	combout => \always1~0_combout\);

-- Location: LCFF_X1_Y8_N1
\led[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \always1~0_combout\,
	ena => \led[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LCFF_X1_Y8_N19
\led[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led~0_combout\,
	ena => \led[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(1));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(1));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(2));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(5));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(6));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(7));
END structure;


