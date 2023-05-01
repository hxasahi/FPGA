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

-- DATE "05/02/2023 01:07:18"

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
-- key[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \key1|cnt_20ms[0]~20_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[1]~22_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[2]~24_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[4]~28_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[6]~32_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[16]~52_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[0]~20_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[1]~22_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[2]~24_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[4]~28_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[6]~32_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \key1|Equal1~1_combout\ : std_logic;
SIGNAL \key2|Equal1~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \key1|cnt_20ms[0]~21\ : std_logic;
SIGNAL \key1|cnt_20ms[1]~23\ : std_logic;
SIGNAL \key1|cnt_20ms[2]~25\ : std_logic;
SIGNAL \key1|cnt_20ms[3]~26_combout\ : std_logic;
SIGNAL \key1|Equal1~3_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[5]~30_combout\ : std_logic;
SIGNAL \key1|Equal1~2_combout\ : std_logic;
SIGNAL \key1|Equal1~4_combout\ : std_logic;
SIGNAL \key1|Equal1~5_combout\ : std_logic;
SIGNAL \key1|always0~0_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[3]~27\ : std_logic;
SIGNAL \key1|cnt_20ms[4]~29\ : std_logic;
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
SIGNAL \key1|cnt_20ms[11]~42_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[11]~43\ : std_logic;
SIGNAL \key1|cnt_20ms[12]~44_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[12]~45\ : std_logic;
SIGNAL \key1|cnt_20ms[13]~46_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[13]~47\ : std_logic;
SIGNAL \key1|cnt_20ms[14]~48_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[14]~49\ : std_logic;
SIGNAL \key1|cnt_20ms[15]~50_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[15]~51\ : std_logic;
SIGNAL \key1|cnt_20ms[16]~53\ : std_logic;
SIGNAL \key1|cnt_20ms[17]~54_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[17]~55\ : std_logic;
SIGNAL \key1|cnt_20ms[18]~56_combout\ : std_logic;
SIGNAL \key1|cnt_20ms[18]~57\ : std_logic;
SIGNAL \key1|cnt_20ms[19]~58_combout\ : std_logic;
SIGNAL \key1|Equal1~0_combout\ : std_logic;
SIGNAL \key1|Equal1~6_combout\ : std_logic;
SIGNAL \key1|key_flag~regout\ : std_logic;
SIGNAL \key2|cnt_20ms[0]~21\ : std_logic;
SIGNAL \key2|cnt_20ms[1]~23\ : std_logic;
SIGNAL \key2|cnt_20ms[2]~25\ : std_logic;
SIGNAL \key2|cnt_20ms[3]~26_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[5]~30_combout\ : std_logic;
SIGNAL \key2|Equal1~2_combout\ : std_logic;
SIGNAL \key2|Equal1~4_combout\ : std_logic;
SIGNAL \key2|Equal1~3_combout\ : std_logic;
SIGNAL \key2|Equal1~5_combout\ : std_logic;
SIGNAL \key2|always0~0_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[3]~27\ : std_logic;
SIGNAL \key2|cnt_20ms[4]~29\ : std_logic;
SIGNAL \key2|cnt_20ms[5]~31\ : std_logic;
SIGNAL \key2|cnt_20ms[6]~33\ : std_logic;
SIGNAL \key2|cnt_20ms[7]~34_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[7]~35\ : std_logic;
SIGNAL \key2|cnt_20ms[8]~36_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[8]~37\ : std_logic;
SIGNAL \key2|cnt_20ms[9]~38_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[9]~39\ : std_logic;
SIGNAL \key2|cnt_20ms[10]~40_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[10]~41\ : std_logic;
SIGNAL \key2|cnt_20ms[11]~42_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[11]~43\ : std_logic;
SIGNAL \key2|cnt_20ms[12]~44_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[12]~45\ : std_logic;
SIGNAL \key2|cnt_20ms[13]~46_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[13]~47\ : std_logic;
SIGNAL \key2|cnt_20ms[14]~48_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[14]~49\ : std_logic;
SIGNAL \key2|cnt_20ms[15]~50_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[15]~51\ : std_logic;
SIGNAL \key2|cnt_20ms[16]~52_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[16]~53\ : std_logic;
SIGNAL \key2|cnt_20ms[17]~54_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[17]~55\ : std_logic;
SIGNAL \key2|cnt_20ms[18]~56_combout\ : std_logic;
SIGNAL \key2|cnt_20ms[18]~57\ : std_logic;
SIGNAL \key2|cnt_20ms[19]~58_combout\ : std_logic;
SIGNAL \key2|Equal1~0_combout\ : std_logic;
SIGNAL \key2|Equal1~6_combout\ : std_logic;
SIGNAL \key2|key_flag~regout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \cnt[2]~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \cnt~4_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \cnt~6_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \led[4]~reg0_regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \led[5]~reg0_regout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \led[6]~reg0_regout\ : std_logic;
SIGNAL \led[7]~reg0_regout\ : std_logic;
SIGNAL \key2|cnt_20ms\ : std_logic_vector(19 DOWNTO 0);
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);
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

-- Location: LCFF_X1_Y6_N15
\key1|cnt_20ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[1]~22_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(1));

-- Location: LCFF_X1_Y6_N17
\key1|cnt_20ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[2]~24_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(2));

-- Location: LCFF_X1_Y6_N21
\key1|cnt_20ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[4]~28_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(4));

-- Location: LCFF_X1_Y6_N25
\key1|cnt_20ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[6]~32_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(6));

-- Location: LCFF_X1_Y5_N13
\key1|cnt_20ms[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[16]~52_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(16));

-- Location: LCFF_X1_Y6_N13
\key1|cnt_20ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[0]~20_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(0));

-- Location: LCFF_X3_Y6_N15
\key2|cnt_20ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[1]~22_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(1));

-- Location: LCFF_X3_Y6_N17
\key2|cnt_20ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[2]~24_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(2));

-- Location: LCFF_X3_Y6_N21
\key2|cnt_20ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[4]~28_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(4));

-- Location: LCFF_X3_Y6_N25
\key2|cnt_20ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[6]~32_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(6));

-- Location: LCFF_X3_Y6_N13
\key2|cnt_20ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[0]~20_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(0));

-- Location: LCCOMB_X1_Y6_N12
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

-- Location: LCCOMB_X1_Y6_N14
\key1|cnt_20ms[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[1]~22_combout\ = (\key1|cnt_20ms\(1) & (!\key1|cnt_20ms[0]~21\)) # (!\key1|cnt_20ms\(1) & ((\key1|cnt_20ms[0]~21\) # (GND)))
-- \key1|cnt_20ms[1]~23\ = CARRY((!\key1|cnt_20ms[0]~21\) # (!\key1|cnt_20ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(1),
	datad => VCC,
	cin => \key1|cnt_20ms[0]~21\,
	combout => \key1|cnt_20ms[1]~22_combout\,
	cout => \key1|cnt_20ms[1]~23\);

-- Location: LCCOMB_X1_Y6_N16
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

-- Location: LCCOMB_X1_Y6_N20
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

-- Location: LCCOMB_X1_Y6_N24
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

-- Location: LCCOMB_X1_Y5_N12
\key1|cnt_20ms[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[16]~52_combout\ = (\key1|cnt_20ms\(16) & (\key1|cnt_20ms[15]~51\ $ (GND))) # (!\key1|cnt_20ms\(16) & (!\key1|cnt_20ms[15]~51\ & VCC))
-- \key1|cnt_20ms[16]~53\ = CARRY((\key1|cnt_20ms\(16) & !\key1|cnt_20ms[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(16),
	datad => VCC,
	cin => \key1|cnt_20ms[15]~51\,
	combout => \key1|cnt_20ms[16]~52_combout\,
	cout => \key1|cnt_20ms[16]~53\);

-- Location: LCCOMB_X3_Y6_N12
\key2|cnt_20ms[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[0]~20_combout\ = \key2|cnt_20ms\(0) $ (VCC)
-- \key2|cnt_20ms[0]~21\ = CARRY(\key2|cnt_20ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(0),
	datad => VCC,
	combout => \key2|cnt_20ms[0]~20_combout\,
	cout => \key2|cnt_20ms[0]~21\);

-- Location: LCCOMB_X3_Y6_N14
\key2|cnt_20ms[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[1]~22_combout\ = (\key2|cnt_20ms\(1) & (!\key2|cnt_20ms[0]~21\)) # (!\key2|cnt_20ms\(1) & ((\key2|cnt_20ms[0]~21\) # (GND)))
-- \key2|cnt_20ms[1]~23\ = CARRY((!\key2|cnt_20ms[0]~21\) # (!\key2|cnt_20ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(1),
	datad => VCC,
	cin => \key2|cnt_20ms[0]~21\,
	combout => \key2|cnt_20ms[1]~22_combout\,
	cout => \key2|cnt_20ms[1]~23\);

-- Location: LCCOMB_X3_Y6_N16
\key2|cnt_20ms[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[2]~24_combout\ = (\key2|cnt_20ms\(2) & (\key2|cnt_20ms[1]~23\ $ (GND))) # (!\key2|cnt_20ms\(2) & (!\key2|cnt_20ms[1]~23\ & VCC))
-- \key2|cnt_20ms[2]~25\ = CARRY((\key2|cnt_20ms\(2) & !\key2|cnt_20ms[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(2),
	datad => VCC,
	cin => \key2|cnt_20ms[1]~23\,
	combout => \key2|cnt_20ms[2]~24_combout\,
	cout => \key2|cnt_20ms[2]~25\);

-- Location: LCCOMB_X3_Y6_N20
\key2|cnt_20ms[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[4]~28_combout\ = (\key2|cnt_20ms\(4) & (\key2|cnt_20ms[3]~27\ $ (GND))) # (!\key2|cnt_20ms\(4) & (!\key2|cnt_20ms[3]~27\ & VCC))
-- \key2|cnt_20ms[4]~29\ = CARRY((\key2|cnt_20ms\(4) & !\key2|cnt_20ms[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(4),
	datad => VCC,
	cin => \key2|cnt_20ms[3]~27\,
	combout => \key2|cnt_20ms[4]~28_combout\,
	cout => \key2|cnt_20ms[4]~29\);

-- Location: LCCOMB_X3_Y6_N24
\key2|cnt_20ms[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[6]~32_combout\ = (\key2|cnt_20ms\(6) & (\key2|cnt_20ms[5]~31\ $ (GND))) # (!\key2|cnt_20ms\(6) & (!\key2|cnt_20ms[5]~31\ & VCC))
-- \key2|cnt_20ms[6]~33\ = CARRY((\key2|cnt_20ms\(6) & !\key2|cnt_20ms[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(6),
	datad => VCC,
	cin => \key2|cnt_20ms[5]~31\,
	combout => \key2|cnt_20ms[6]~32_combout\,
	cout => \key2|cnt_20ms[6]~33\);

-- Location: LCCOMB_X2_Y6_N12
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = cnt(1) $ (cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datac => cnt(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X2_Y6_N20
\cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (\key1|key_flag~regout\ & (cnt(0) & cnt(1))) # (!\key1|key_flag~regout\ & ((cnt(0)) # (cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1|key_flag~regout\,
	datac => cnt(0),
	datad => cnt(1),
	combout => \cnt~3_combout\);

-- Location: LCCOMB_X1_Y6_N10
\key1|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~1_combout\ = (\key1|cnt_20ms\(4) & (\key1|cnt_20ms\(1) & (\key1|cnt_20ms\(2) & \key1|cnt_20ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(4),
	datab => \key1|cnt_20ms\(1),
	datac => \key1|cnt_20ms\(2),
	datad => \key1|cnt_20ms\(3),
	combout => \key1|Equal1~1_combout\);

-- Location: LCCOMB_X3_Y6_N10
\key2|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|Equal1~1_combout\ = (\key2|cnt_20ms\(4) & (\key2|cnt_20ms\(3) & (\key2|cnt_20ms\(2) & \key2|cnt_20ms\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(4),
	datab => \key2|cnt_20ms\(3),
	datac => \key2|cnt_20ms\(2),
	datad => \key2|cnt_20ms\(1),
	combout => \key2|Equal1~1_combout\);

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

-- Location: LCCOMB_X1_Y6_N18
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

-- Location: LCCOMB_X1_Y6_N2
\key1|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~3_combout\ = (\key1|cnt_20ms\(9) & (!\key1|cnt_20ms\(10) & (!\key1|cnt_20ms\(11) & !\key1|cnt_20ms\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(9),
	datab => \key1|cnt_20ms\(10),
	datac => \key1|cnt_20ms\(11),
	datad => \key1|cnt_20ms\(12),
	combout => \key1|Equal1~3_combout\);

-- Location: LCCOMB_X1_Y6_N22
\key1|cnt_20ms[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[5]~30_combout\ = (\key1|cnt_20ms\(5) & (!\key1|cnt_20ms[4]~29\)) # (!\key1|cnt_20ms\(5) & ((\key1|cnt_20ms[4]~29\) # (GND)))
-- \key1|cnt_20ms[5]~31\ = CARRY((!\key1|cnt_20ms[4]~29\) # (!\key1|cnt_20ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(5),
	datad => VCC,
	cin => \key1|cnt_20ms[4]~29\,
	combout => \key1|cnt_20ms[5]~30_combout\,
	cout => \key1|cnt_20ms[5]~31\);

-- Location: LCFF_X1_Y6_N23
\key1|cnt_20ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[5]~30_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(5));

-- Location: LCCOMB_X1_Y6_N8
\key1|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~2_combout\ = (!\key1|cnt_20ms\(6) & (!\key1|cnt_20ms\(8) & (\key1|cnt_20ms\(5) & !\key1|cnt_20ms\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(6),
	datab => \key1|cnt_20ms\(8),
	datac => \key1|cnt_20ms\(5),
	datad => \key1|cnt_20ms\(7),
	combout => \key1|Equal1~2_combout\);

-- Location: LCCOMB_X1_Y5_N30
\key1|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~4_combout\ = (\key1|cnt_20ms\(16) & (\key1|cnt_20ms\(14) & (!\key1|cnt_20ms\(13) & !\key1|cnt_20ms\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(16),
	datab => \key1|cnt_20ms\(14),
	datac => \key1|cnt_20ms\(13),
	datad => \key1|cnt_20ms\(15),
	combout => \key1|Equal1~4_combout\);

-- Location: LCCOMB_X1_Y6_N0
\key1|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~5_combout\ = (\key1|Equal1~1_combout\ & (\key1|Equal1~3_combout\ & (\key1|Equal1~2_combout\ & \key1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|Equal1~1_combout\,
	datab => \key1|Equal1~3_combout\,
	datac => \key1|Equal1~2_combout\,
	datad => \key1|Equal1~4_combout\,
	combout => \key1|Equal1~5_combout\);

-- Location: LCCOMB_X1_Y6_N6
\key1|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|always0~0_combout\ = ((\key~combout\(0)) # ((!\key1|Equal1~5_combout\) # (!\key1|Equal1~0_combout\))) # (!\key1|cnt_20ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(0),
	datab => \key~combout\(0),
	datac => \key1|Equal1~0_combout\,
	datad => \key1|Equal1~5_combout\,
	combout => \key1|always0~0_combout\);

-- Location: LCFF_X1_Y6_N19
\key1|cnt_20ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[3]~26_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(3));

-- Location: LCCOMB_X1_Y6_N26
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

-- Location: LCFF_X1_Y6_N27
\key1|cnt_20ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[7]~34_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(7));

-- Location: LCCOMB_X1_Y6_N28
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

-- Location: LCFF_X1_Y6_N29
\key1|cnt_20ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[8]~36_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(8));

-- Location: LCCOMB_X1_Y6_N30
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

-- Location: LCFF_X1_Y6_N31
\key1|cnt_20ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[9]~38_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(9));

-- Location: LCCOMB_X1_Y5_N0
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

-- Location: LCFF_X1_Y5_N1
\key1|cnt_20ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[10]~40_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(10));

-- Location: LCCOMB_X1_Y5_N2
\key1|cnt_20ms[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[11]~42_combout\ = (\key1|cnt_20ms\(11) & (!\key1|cnt_20ms[10]~41\)) # (!\key1|cnt_20ms\(11) & ((\key1|cnt_20ms[10]~41\) # (GND)))
-- \key1|cnt_20ms[11]~43\ = CARRY((!\key1|cnt_20ms[10]~41\) # (!\key1|cnt_20ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(11),
	datad => VCC,
	cin => \key1|cnt_20ms[10]~41\,
	combout => \key1|cnt_20ms[11]~42_combout\,
	cout => \key1|cnt_20ms[11]~43\);

-- Location: LCFF_X1_Y5_N3
\key1|cnt_20ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[11]~42_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(11));

-- Location: LCCOMB_X1_Y5_N4
\key1|cnt_20ms[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|cnt_20ms[12]~44_combout\ = (\key1|cnt_20ms\(12) & (\key1|cnt_20ms[11]~43\ $ (GND))) # (!\key1|cnt_20ms\(12) & (!\key1|cnt_20ms[11]~43\ & VCC))
-- \key1|cnt_20ms[12]~45\ = CARRY((\key1|cnt_20ms\(12) & !\key1|cnt_20ms[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|cnt_20ms\(12),
	datad => VCC,
	cin => \key1|cnt_20ms[11]~43\,
	combout => \key1|cnt_20ms[12]~44_combout\,
	cout => \key1|cnt_20ms[12]~45\);

-- Location: LCFF_X1_Y5_N5
\key1|cnt_20ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[12]~44_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(12));

-- Location: LCCOMB_X1_Y5_N6
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

-- Location: LCFF_X1_Y5_N7
\key1|cnt_20ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[13]~46_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(13));

-- Location: LCCOMB_X1_Y5_N8
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

-- Location: LCFF_X1_Y5_N9
\key1|cnt_20ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[14]~48_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(14));

-- Location: LCCOMB_X1_Y5_N10
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

-- Location: LCFF_X1_Y5_N11
\key1|cnt_20ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[15]~50_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(15));

-- Location: LCCOMB_X1_Y5_N14
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

-- Location: LCFF_X1_Y5_N15
\key1|cnt_20ms[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[17]~54_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(17));

-- Location: LCCOMB_X1_Y5_N16
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

-- Location: LCFF_X1_Y5_N17
\key1|cnt_20ms[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[18]~56_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(18));

-- Location: LCCOMB_X1_Y5_N18
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

-- Location: LCFF_X1_Y5_N19
\key1|cnt_20ms[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|cnt_20ms[19]~58_combout\,
	sclr => \key~combout\(0),
	ena => \key1|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|cnt_20ms\(19));

-- Location: LCCOMB_X1_Y5_N28
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

-- Location: LCCOMB_X1_Y6_N4
\key1|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \key1|Equal1~6_combout\ = (!\key1|cnt_20ms\(0) & (\key1|Equal1~0_combout\ & \key1|Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|cnt_20ms\(0),
	datac => \key1|Equal1~0_combout\,
	datad => \key1|Equal1~5_combout\,
	combout => \key1|Equal1~6_combout\);

-- Location: LCFF_X1_Y6_N5
\key1|key_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key1|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key1|key_flag~regout\);

-- Location: LCCOMB_X3_Y6_N18
\key2|cnt_20ms[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[3]~26_combout\ = (\key2|cnt_20ms\(3) & (!\key2|cnt_20ms[2]~25\)) # (!\key2|cnt_20ms\(3) & ((\key2|cnt_20ms[2]~25\) # (GND)))
-- \key2|cnt_20ms[3]~27\ = CARRY((!\key2|cnt_20ms[2]~25\) # (!\key2|cnt_20ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(3),
	datad => VCC,
	cin => \key2|cnt_20ms[2]~25\,
	combout => \key2|cnt_20ms[3]~26_combout\,
	cout => \key2|cnt_20ms[3]~27\);

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
	padio => ww_key(1),
	combout => \key~combout\(1));

-- Location: LCCOMB_X3_Y6_N22
\key2|cnt_20ms[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[5]~30_combout\ = (\key2|cnt_20ms\(5) & (!\key2|cnt_20ms[4]~29\)) # (!\key2|cnt_20ms\(5) & ((\key2|cnt_20ms[4]~29\) # (GND)))
-- \key2|cnt_20ms[5]~31\ = CARRY((!\key2|cnt_20ms[4]~29\) # (!\key2|cnt_20ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(5),
	datad => VCC,
	cin => \key2|cnt_20ms[4]~29\,
	combout => \key2|cnt_20ms[5]~30_combout\,
	cout => \key2|cnt_20ms[5]~31\);

-- Location: LCFF_X3_Y6_N23
\key2|cnt_20ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[5]~30_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(5));

-- Location: LCCOMB_X3_Y6_N8
\key2|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|Equal1~2_combout\ = (!\key2|cnt_20ms\(6) & (!\key2|cnt_20ms\(8) & (\key2|cnt_20ms\(5) & !\key2|cnt_20ms\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(6),
	datab => \key2|cnt_20ms\(8),
	datac => \key2|cnt_20ms\(5),
	datad => \key2|cnt_20ms\(7),
	combout => \key2|Equal1~2_combout\);

-- Location: LCCOMB_X3_Y5_N26
\key2|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|Equal1~4_combout\ = (\key2|cnt_20ms\(16) & (\key2|cnt_20ms\(14) & (!\key2|cnt_20ms\(15) & !\key2|cnt_20ms\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(16),
	datab => \key2|cnt_20ms\(14),
	datac => \key2|cnt_20ms\(15),
	datad => \key2|cnt_20ms\(13),
	combout => \key2|Equal1~4_combout\);

-- Location: LCCOMB_X3_Y6_N2
\key2|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|Equal1~3_combout\ = (\key2|cnt_20ms\(9) & (!\key2|cnt_20ms\(10) & (!\key2|cnt_20ms\(11) & !\key2|cnt_20ms\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(9),
	datab => \key2|cnt_20ms\(10),
	datac => \key2|cnt_20ms\(11),
	datad => \key2|cnt_20ms\(12),
	combout => \key2|Equal1~3_combout\);

-- Location: LCCOMB_X3_Y6_N0
\key2|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|Equal1~5_combout\ = (\key2|Equal1~1_combout\ & (\key2|Equal1~2_combout\ & (\key2|Equal1~4_combout\ & \key2|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|Equal1~1_combout\,
	datab => \key2|Equal1~2_combout\,
	datac => \key2|Equal1~4_combout\,
	datad => \key2|Equal1~3_combout\,
	combout => \key2|Equal1~5_combout\);

-- Location: LCCOMB_X3_Y6_N6
\key2|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|always0~0_combout\ = ((\key~combout\(1)) # ((!\key2|Equal1~5_combout\) # (!\key2|Equal1~0_combout\))) # (!\key2|cnt_20ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(0),
	datab => \key~combout\(1),
	datac => \key2|Equal1~0_combout\,
	datad => \key2|Equal1~5_combout\,
	combout => \key2|always0~0_combout\);

-- Location: LCFF_X3_Y6_N19
\key2|cnt_20ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[3]~26_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(3));

-- Location: LCCOMB_X3_Y6_N26
\key2|cnt_20ms[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[7]~34_combout\ = (\key2|cnt_20ms\(7) & (!\key2|cnt_20ms[6]~33\)) # (!\key2|cnt_20ms\(7) & ((\key2|cnt_20ms[6]~33\) # (GND)))
-- \key2|cnt_20ms[7]~35\ = CARRY((!\key2|cnt_20ms[6]~33\) # (!\key2|cnt_20ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(7),
	datad => VCC,
	cin => \key2|cnt_20ms[6]~33\,
	combout => \key2|cnt_20ms[7]~34_combout\,
	cout => \key2|cnt_20ms[7]~35\);

-- Location: LCFF_X3_Y6_N27
\key2|cnt_20ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[7]~34_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(7));

-- Location: LCCOMB_X3_Y6_N28
\key2|cnt_20ms[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[8]~36_combout\ = (\key2|cnt_20ms\(8) & (\key2|cnt_20ms[7]~35\ $ (GND))) # (!\key2|cnt_20ms\(8) & (!\key2|cnt_20ms[7]~35\ & VCC))
-- \key2|cnt_20ms[8]~37\ = CARRY((\key2|cnt_20ms\(8) & !\key2|cnt_20ms[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(8),
	datad => VCC,
	cin => \key2|cnt_20ms[7]~35\,
	combout => \key2|cnt_20ms[8]~36_combout\,
	cout => \key2|cnt_20ms[8]~37\);

-- Location: LCFF_X3_Y6_N29
\key2|cnt_20ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[8]~36_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(8));

-- Location: LCCOMB_X3_Y6_N30
\key2|cnt_20ms[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[9]~38_combout\ = (\key2|cnt_20ms\(9) & (!\key2|cnt_20ms[8]~37\)) # (!\key2|cnt_20ms\(9) & ((\key2|cnt_20ms[8]~37\) # (GND)))
-- \key2|cnt_20ms[9]~39\ = CARRY((!\key2|cnt_20ms[8]~37\) # (!\key2|cnt_20ms\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(9),
	datad => VCC,
	cin => \key2|cnt_20ms[8]~37\,
	combout => \key2|cnt_20ms[9]~38_combout\,
	cout => \key2|cnt_20ms[9]~39\);

-- Location: LCFF_X3_Y6_N31
\key2|cnt_20ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[9]~38_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(9));

-- Location: LCCOMB_X3_Y5_N0
\key2|cnt_20ms[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[10]~40_combout\ = (\key2|cnt_20ms\(10) & (\key2|cnt_20ms[9]~39\ $ (GND))) # (!\key2|cnt_20ms\(10) & (!\key2|cnt_20ms[9]~39\ & VCC))
-- \key2|cnt_20ms[10]~41\ = CARRY((\key2|cnt_20ms\(10) & !\key2|cnt_20ms[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(10),
	datad => VCC,
	cin => \key2|cnt_20ms[9]~39\,
	combout => \key2|cnt_20ms[10]~40_combout\,
	cout => \key2|cnt_20ms[10]~41\);

-- Location: LCFF_X3_Y5_N1
\key2|cnt_20ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[10]~40_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(10));

-- Location: LCCOMB_X3_Y5_N2
\key2|cnt_20ms[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[11]~42_combout\ = (\key2|cnt_20ms\(11) & (!\key2|cnt_20ms[10]~41\)) # (!\key2|cnt_20ms\(11) & ((\key2|cnt_20ms[10]~41\) # (GND)))
-- \key2|cnt_20ms[11]~43\ = CARRY((!\key2|cnt_20ms[10]~41\) # (!\key2|cnt_20ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(11),
	datad => VCC,
	cin => \key2|cnt_20ms[10]~41\,
	combout => \key2|cnt_20ms[11]~42_combout\,
	cout => \key2|cnt_20ms[11]~43\);

-- Location: LCFF_X3_Y5_N3
\key2|cnt_20ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[11]~42_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(11));

-- Location: LCCOMB_X3_Y5_N4
\key2|cnt_20ms[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[12]~44_combout\ = (\key2|cnt_20ms\(12) & (\key2|cnt_20ms[11]~43\ $ (GND))) # (!\key2|cnt_20ms\(12) & (!\key2|cnt_20ms[11]~43\ & VCC))
-- \key2|cnt_20ms[12]~45\ = CARRY((\key2|cnt_20ms\(12) & !\key2|cnt_20ms[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(12),
	datad => VCC,
	cin => \key2|cnt_20ms[11]~43\,
	combout => \key2|cnt_20ms[12]~44_combout\,
	cout => \key2|cnt_20ms[12]~45\);

-- Location: LCFF_X3_Y5_N5
\key2|cnt_20ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[12]~44_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(12));

-- Location: LCCOMB_X3_Y5_N6
\key2|cnt_20ms[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[13]~46_combout\ = (\key2|cnt_20ms\(13) & (!\key2|cnt_20ms[12]~45\)) # (!\key2|cnt_20ms\(13) & ((\key2|cnt_20ms[12]~45\) # (GND)))
-- \key2|cnt_20ms[13]~47\ = CARRY((!\key2|cnt_20ms[12]~45\) # (!\key2|cnt_20ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(13),
	datad => VCC,
	cin => \key2|cnt_20ms[12]~45\,
	combout => \key2|cnt_20ms[13]~46_combout\,
	cout => \key2|cnt_20ms[13]~47\);

-- Location: LCFF_X3_Y5_N7
\key2|cnt_20ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[13]~46_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(13));

-- Location: LCCOMB_X3_Y5_N8
\key2|cnt_20ms[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[14]~48_combout\ = (\key2|cnt_20ms\(14) & (\key2|cnt_20ms[13]~47\ $ (GND))) # (!\key2|cnt_20ms\(14) & (!\key2|cnt_20ms[13]~47\ & VCC))
-- \key2|cnt_20ms[14]~49\ = CARRY((\key2|cnt_20ms\(14) & !\key2|cnt_20ms[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(14),
	datad => VCC,
	cin => \key2|cnt_20ms[13]~47\,
	combout => \key2|cnt_20ms[14]~48_combout\,
	cout => \key2|cnt_20ms[14]~49\);

-- Location: LCFF_X3_Y5_N9
\key2|cnt_20ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[14]~48_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(14));

-- Location: LCCOMB_X3_Y5_N10
\key2|cnt_20ms[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[15]~50_combout\ = (\key2|cnt_20ms\(15) & (!\key2|cnt_20ms[14]~49\)) # (!\key2|cnt_20ms\(15) & ((\key2|cnt_20ms[14]~49\) # (GND)))
-- \key2|cnt_20ms[15]~51\ = CARRY((!\key2|cnt_20ms[14]~49\) # (!\key2|cnt_20ms\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(15),
	datad => VCC,
	cin => \key2|cnt_20ms[14]~49\,
	combout => \key2|cnt_20ms[15]~50_combout\,
	cout => \key2|cnt_20ms[15]~51\);

-- Location: LCFF_X3_Y5_N11
\key2|cnt_20ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[15]~50_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(15));

-- Location: LCCOMB_X3_Y5_N12
\key2|cnt_20ms[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[16]~52_combout\ = (\key2|cnt_20ms\(16) & (\key2|cnt_20ms[15]~51\ $ (GND))) # (!\key2|cnt_20ms\(16) & (!\key2|cnt_20ms[15]~51\ & VCC))
-- \key2|cnt_20ms[16]~53\ = CARRY((\key2|cnt_20ms\(16) & !\key2|cnt_20ms[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(16),
	datad => VCC,
	cin => \key2|cnt_20ms[15]~51\,
	combout => \key2|cnt_20ms[16]~52_combout\,
	cout => \key2|cnt_20ms[16]~53\);

-- Location: LCFF_X3_Y5_N13
\key2|cnt_20ms[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[16]~52_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(16));

-- Location: LCCOMB_X3_Y5_N14
\key2|cnt_20ms[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[17]~54_combout\ = (\key2|cnt_20ms\(17) & (!\key2|cnt_20ms[16]~53\)) # (!\key2|cnt_20ms\(17) & ((\key2|cnt_20ms[16]~53\) # (GND)))
-- \key2|cnt_20ms[17]~55\ = CARRY((!\key2|cnt_20ms[16]~53\) # (!\key2|cnt_20ms\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(17),
	datad => VCC,
	cin => \key2|cnt_20ms[16]~53\,
	combout => \key2|cnt_20ms[17]~54_combout\,
	cout => \key2|cnt_20ms[17]~55\);

-- Location: LCFF_X3_Y5_N15
\key2|cnt_20ms[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[17]~54_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(17));

-- Location: LCCOMB_X3_Y5_N16
\key2|cnt_20ms[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[18]~56_combout\ = (\key2|cnt_20ms\(18) & (\key2|cnt_20ms[17]~55\ $ (GND))) # (!\key2|cnt_20ms\(18) & (!\key2|cnt_20ms[17]~55\ & VCC))
-- \key2|cnt_20ms[18]~57\ = CARRY((\key2|cnt_20ms\(18) & !\key2|cnt_20ms[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(18),
	datad => VCC,
	cin => \key2|cnt_20ms[17]~55\,
	combout => \key2|cnt_20ms[18]~56_combout\,
	cout => \key2|cnt_20ms[18]~57\);

-- Location: LCFF_X3_Y5_N17
\key2|cnt_20ms[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[18]~56_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(18));

-- Location: LCCOMB_X3_Y5_N18
\key2|cnt_20ms[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|cnt_20ms[19]~58_combout\ = \key2|cnt_20ms[18]~57\ $ (\key2|cnt_20ms\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key2|cnt_20ms\(19),
	cin => \key2|cnt_20ms[18]~57\,
	combout => \key2|cnt_20ms[19]~58_combout\);

-- Location: LCFF_X3_Y5_N19
\key2|cnt_20ms[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|cnt_20ms[19]~58_combout\,
	sclr => \key~combout\(1),
	ena => \key2|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|cnt_20ms\(19));

-- Location: LCCOMB_X3_Y5_N20
\key2|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|Equal1~0_combout\ = (\key2|cnt_20ms\(17) & (\key2|cnt_20ms\(18) & \key2|cnt_20ms\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2|cnt_20ms\(17),
	datac => \key2|cnt_20ms\(18),
	datad => \key2|cnt_20ms\(19),
	combout => \key2|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y6_N4
\key2|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \key2|Equal1~6_combout\ = (!\key2|cnt_20ms\(0) & (\key2|Equal1~0_combout\ & \key2|Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|cnt_20ms\(0),
	datac => \key2|Equal1~0_combout\,
	datad => \key2|Equal1~5_combout\,
	combout => \key2|Equal1~6_combout\);

-- Location: LCFF_X3_Y6_N5
\key2|key_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key2|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key2|key_flag~regout\);

-- Location: LCCOMB_X2_Y6_N16
\cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = cnt(0) $ (((\key1|key_flag~regout\) # (\key2|key_flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1|key_flag~regout\,
	datac => cnt(0),
	datad => \key2|key_flag~regout\,
	combout => \cnt~0_combout\);

-- Location: LCFF_X2_Y6_N17
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X2_Y6_N4
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(3) & (!cnt(2) & (cnt(0) & !cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(0),
	datad => cnt(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y6_N6
\cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (\Add1~0_combout\ & (!\Equal0~0_combout\ & (\key1|key_flag~regout\))) # (!\Add1~0_combout\ & (((!\key1|key_flag~regout\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \key1|key_flag~regout\,
	datad => \Equal1~0_combout\,
	combout => \cnt~1_combout\);

-- Location: LCCOMB_X2_Y6_N18
\cnt[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~2_combout\ = (\key1|key_flag~regout\) # (\key2|key_flag~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1|key_flag~regout\,
	datad => \key2|key_flag~regout\,
	combout => \cnt[2]~2_combout\);

-- Location: LCFF_X2_Y6_N7
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~1_combout\,
	ena => \cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X2_Y6_N26
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!cnt(3) & (!cnt(2) & (!cnt(0) & !cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(0),
	datad => cnt(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X2_Y6_N8
\cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~4_combout\ = (\key1|key_flag~regout\ & (\cnt~3_combout\ $ ((cnt(2))))) # (!\key1|key_flag~regout\ & (!\Equal1~0_combout\ & (\cnt~3_combout\ $ (!cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt~3_combout\,
	datab => \key1|key_flag~regout\,
	datac => cnt(2),
	datad => \Equal1~0_combout\,
	combout => \cnt~4_combout\);

-- Location: LCFF_X2_Y6_N9
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~4_combout\,
	ena => \cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X2_Y6_N28
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (cnt(2) & (cnt(3))) # (!cnt(2) & ((cnt(1) & (cnt(3))) # (!cnt(1) & ((cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(0),
	datad => cnt(1),
	combout => \WideOr6~0_combout\);

-- Location: LCFF_X2_Y6_N29
\led[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LCCOMB_X2_Y6_N30
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (cnt(2) & (cnt(3))) # (!cnt(2) & ((cnt(0) & (cnt(3))) # (!cnt(0) & ((cnt(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(0),
	datad => cnt(1),
	combout => \WideOr5~0_combout\);

-- Location: LCFF_X2_Y6_N31
\led[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LCCOMB_X2_Y6_N24
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (cnt(3) & ((cnt(2)) # ((cnt(0)) # (cnt(1))))) # (!cnt(3) & (!cnt(2) & (cnt(0) & cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(0),
	datad => cnt(1),
	combout => \WideOr4~0_combout\);

-- Location: LCFF_X2_Y6_N25
\led[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LCCOMB_X2_Y6_N14
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (cnt(0) & (cnt(3))) # (!cnt(0) & ((cnt(1) & (cnt(3))) # (!cnt(1) & ((cnt(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(0),
	datad => cnt(1),
	combout => \WideOr3~0_combout\);

-- Location: LCFF_X2_Y6_N15
\led[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: LCCOMB_X2_Y6_N22
\cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (cnt(0) & (((cnt(2) & cnt(1))) # (!\key1|key_flag~regout\))) # (!cnt(0) & (!\key1|key_flag~regout\ & ((cnt(2)) # (cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => \key1|key_flag~regout\,
	datad => cnt(1),
	combout => \cnt~5_combout\);

-- Location: LCCOMB_X2_Y6_N10
\cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~6_combout\ = (\key1|key_flag~regout\ & (!\Equal0~0_combout\ & (cnt(3) $ (\cnt~5_combout\)))) # (!\key1|key_flag~regout\ & (((cnt(3) & \cnt~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \key1|key_flag~regout\,
	datac => cnt(3),
	datad => \cnt~5_combout\,
	combout => \cnt~6_combout\);

-- Location: LCFF_X2_Y6_N11
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~6_combout\,
	ena => \cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X2_Y5_N16
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (cnt(1) & (((cnt(3))))) # (!cnt(1) & ((cnt(2) & ((cnt(3)) # (cnt(0)))) # (!cnt(2) & (cnt(3) & cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(0),
	combout => \WideOr2~0_combout\);

-- Location: LCFF_X2_Y5_N17
\led[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[4]~reg0_regout\);

-- Location: LCCOMB_X2_Y5_N26
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (cnt(1) & ((cnt(3)) # ((cnt(2) & !cnt(0))))) # (!cnt(1) & (cnt(3) & ((cnt(2)) # (cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(0),
	combout => \WideOr1~0_combout\);

-- Location: LCFF_X2_Y5_N27
\led[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[5]~reg0_regout\);

-- Location: LCCOMB_X2_Y5_N12
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (cnt(1) & ((cnt(3)) # ((cnt(2) & cnt(0))))) # (!cnt(1) & (cnt(3) & ((cnt(2)) # (cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(0),
	combout => \WideOr0~0_combout\);

-- Location: LCFF_X2_Y5_N13
\led[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[6]~reg0_regout\);

-- Location: LCFF_X2_Y5_N19
\led[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => cnt(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[7]~reg0_regout\);

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
	datain => \led[4]~reg0_regout\,
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
	datain => \led[5]~reg0_regout\,
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
	datain => \led[6]~reg0_regout\,
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
	datain => \led[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(7));
END structure;


