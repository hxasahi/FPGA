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

-- DATE "04/28/2023 23:33:00"

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
	key : IN std_logic_vector(4 DOWNTO 0);
	beep : OUT std_logic;
	led : OUT std_logic_vector(4 DOWNTO 0)
	);
END demo;

-- Design Ports Information
-- beep	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[0]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[1]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[2]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[3]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[4]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_key : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_beep : std_logic;
SIGNAL ww_led : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt[6]~44_combout\ : std_logic;
SIGNAL \cnt[8]~48_combout\ : std_logic;
SIGNAL \cnt[12]~56_combout\ : std_logic;
SIGNAL \cnt[26]~84_combout\ : std_logic;
SIGNAL \cnt[28]~88_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \freq~4_combout\ : std_logic;
SIGNAL \freq~5_combout\ : std_logic;
SIGNAL \freq~6_combout\ : std_logic;
SIGNAL \freq~7_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \freq[16]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~32_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \cnt[19]~70_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \cnt[3]~38_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \cnt[5]~42_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \freq~0_combout\ : std_logic;
SIGNAL \freq~1_combout\ : std_logic;
SIGNAL \freq~2_combout\ : std_logic;
SIGNAL \freq~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \cnt[10]~52_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \cnt[0]~33\ : std_logic;
SIGNAL \cnt[1]~34_combout\ : std_logic;
SIGNAL \cnt[1]~35\ : std_logic;
SIGNAL \cnt[2]~36_combout\ : std_logic;
SIGNAL \cnt[2]~37\ : std_logic;
SIGNAL \cnt[3]~39\ : std_logic;
SIGNAL \cnt[4]~40_combout\ : std_logic;
SIGNAL \cnt[4]~41\ : std_logic;
SIGNAL \cnt[5]~43\ : std_logic;
SIGNAL \cnt[6]~45\ : std_logic;
SIGNAL \cnt[7]~46_combout\ : std_logic;
SIGNAL \cnt[7]~47\ : std_logic;
SIGNAL \cnt[8]~49\ : std_logic;
SIGNAL \cnt[9]~50_combout\ : std_logic;
SIGNAL \cnt[9]~51\ : std_logic;
SIGNAL \cnt[10]~53\ : std_logic;
SIGNAL \cnt[11]~54_combout\ : std_logic;
SIGNAL \cnt[11]~55\ : std_logic;
SIGNAL \cnt[12]~57\ : std_logic;
SIGNAL \cnt[13]~58_combout\ : std_logic;
SIGNAL \cnt[13]~59\ : std_logic;
SIGNAL \cnt[14]~60_combout\ : std_logic;
SIGNAL \cnt[14]~61\ : std_logic;
SIGNAL \cnt[15]~62_combout\ : std_logic;
SIGNAL \cnt[15]~63\ : std_logic;
SIGNAL \cnt[16]~64_combout\ : std_logic;
SIGNAL \cnt[16]~65\ : std_logic;
SIGNAL \cnt[17]~66_combout\ : std_logic;
SIGNAL \cnt[17]~67\ : std_logic;
SIGNAL \cnt[18]~68_combout\ : std_logic;
SIGNAL \cnt[18]~69\ : std_logic;
SIGNAL \cnt[19]~71\ : std_logic;
SIGNAL \cnt[20]~72_combout\ : std_logic;
SIGNAL \cnt[20]~73\ : std_logic;
SIGNAL \cnt[21]~75\ : std_logic;
SIGNAL \cnt[22]~77\ : std_logic;
SIGNAL \cnt[23]~78_combout\ : std_logic;
SIGNAL \cnt[23]~79\ : std_logic;
SIGNAL \cnt[24]~81\ : std_logic;
SIGNAL \cnt[25]~82_combout\ : std_logic;
SIGNAL \cnt[25]~83\ : std_logic;
SIGNAL \cnt[26]~85\ : std_logic;
SIGNAL \cnt[27]~86_combout\ : std_logic;
SIGNAL \cnt[27]~87\ : std_logic;
SIGNAL \cnt[28]~89\ : std_logic;
SIGNAL \cnt[29]~90_combout\ : std_logic;
SIGNAL \cnt[29]~91\ : std_logic;
SIGNAL \cnt[30]~92_combout\ : std_logic;
SIGNAL \cnt[30]~93\ : std_logic;
SIGNAL \cnt[31]~94_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \cnt[24]~80_combout\ : std_logic;
SIGNAL \cnt[22]~76_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \cnt[21]~74_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \beep~0_combout\ : std_logic;
SIGNAL \beep~reg0_regout\ : std_logic;
SIGNAL \led[0]~reg0feeder_combout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \led[1]~reg0feeder_combout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \led[3]~reg0feeder_combout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;
SIGNAL \led[4]~reg0feeder_combout\ : std_logic;
SIGNAL \led[4]~reg0_regout\ : std_logic;
SIGNAL freq : std_logic_vector(31 DOWNTO 0);
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_key <= key;
beep <= ww_beep;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X15_Y15_N13
\cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[6]~44_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LCFF_X15_Y15_N17
\cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[8]~48_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8));

-- Location: LCFF_X15_Y15_N25
\cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[12]~56_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12));

-- Location: LCFF_X15_Y14_N21
\cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[26]~84_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(26));

-- Location: LCFF_X15_Y14_N25
\cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[28]~88_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(28));

-- Location: LCCOMB_X15_Y15_N12
\cnt[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[6]~44_combout\ = (cnt(6) & (\cnt[5]~43\ $ (GND))) # (!cnt(6) & (!\cnt[5]~43\ & VCC))
-- \cnt[6]~45\ = CARRY((cnt(6) & !\cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \cnt[5]~43\,
	combout => \cnt[6]~44_combout\,
	cout => \cnt[6]~45\);

-- Location: LCCOMB_X15_Y15_N16
\cnt[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[8]~48_combout\ = (cnt(8) & (\cnt[7]~47\ $ (GND))) # (!cnt(8) & (!\cnt[7]~47\ & VCC))
-- \cnt[8]~49\ = CARRY((cnt(8) & !\cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datad => VCC,
	cin => \cnt[7]~47\,
	combout => \cnt[8]~48_combout\,
	cout => \cnt[8]~49\);

-- Location: LCCOMB_X15_Y15_N24
\cnt[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[12]~56_combout\ = (cnt(12) & (\cnt[11]~55\ $ (GND))) # (!cnt(12) & (!\cnt[11]~55\ & VCC))
-- \cnt[12]~57\ = CARRY((cnt(12) & !\cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	datad => VCC,
	cin => \cnt[11]~55\,
	combout => \cnt[12]~56_combout\,
	cout => \cnt[12]~57\);

-- Location: LCCOMB_X15_Y14_N20
\cnt[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[26]~84_combout\ = (cnt(26) & (\cnt[25]~83\ $ (GND))) # (!cnt(26) & (!\cnt[25]~83\ & VCC))
-- \cnt[26]~85\ = CARRY((cnt(26) & !\cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(26),
	datad => VCC,
	cin => \cnt[25]~83\,
	combout => \cnt[26]~84_combout\,
	cout => \cnt[26]~85\);

-- Location: LCCOMB_X15_Y14_N24
\cnt[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[28]~88_combout\ = (cnt(28) & (\cnt[27]~87\ $ (GND))) # (!cnt(28) & (!\cnt[27]~87\ & VCC))
-- \cnt[28]~89\ = CARRY((cnt(28) & !\cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datad => VCC,
	cin => \cnt[27]~87\,
	combout => \cnt[28]~88_combout\,
	cout => \cnt[28]~89\);

-- Location: LCFF_X14_Y14_N11
\freq[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \freq~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(11));

-- Location: LCFF_X14_Y14_N21
\freq[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freq[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(16));

-- Location: LCCOMB_X14_Y14_N10
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (freq(16) & (cnt(12) & (freq(11) $ (!cnt(11))))) # (!freq(16) & (!cnt(12) & (freq(11) $ (!cnt(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => freq(16),
	datab => cnt(12),
	datac => freq(11),
	datad => cnt(11),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X14_Y14_N7
\freq[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \WideOr2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(17));

-- Location: LCCOMB_X14_Y14_N6
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (freq(16) & (!cnt(16) & (freq(17) $ (!cnt(17))))) # (!freq(16) & (cnt(16) & (freq(17) $ (!cnt(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => freq(16),
	datab => cnt(16),
	datac => freq(17),
	datad => cnt(17),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X16_Y14_N22
\Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!cnt(26) & (!cnt(28) & (!cnt(27) & !cnt(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(26),
	datab => cnt(28),
	datac => cnt(27),
	datad => cnt(29),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X15_Y12_N26
\freq~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~4_combout\ = (\key~combout\(0) & (\key~combout\(2) & (\key~combout\(1) $ (\key~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(1),
	datac => \key~combout\(2),
	datad => \key~combout\(3),
	combout => \freq~4_combout\);

-- Location: LCCOMB_X14_Y12_N16
\freq~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~5_combout\ = (\freq~4_combout\ & \key~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq~4_combout\,
	datad => \key~combout\(4),
	combout => \freq~5_combout\);

-- Location: LCCOMB_X15_Y12_N16
\freq~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~6_combout\ = (\key~combout\(0) & (\key~combout\(1) & (\key~combout\(2) $ (\key~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(1),
	datac => \key~combout\(2),
	datad => \key~combout\(3),
	combout => \freq~6_combout\);

-- Location: LCCOMB_X14_Y12_N22
\freq~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~7_combout\ = (\freq~6_combout\ & \key~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq~6_combout\,
	datad => \key~combout\(4),
	combout => \freq~7_combout\);

-- Location: LCCOMB_X15_Y12_N20
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\key~combout\(0) & ((\key~combout\(1) & (\key~combout\(4) $ (\key~combout\(3)))) # (!\key~combout\(1) & (\key~combout\(4) & \key~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(1),
	datac => \key~combout\(4),
	datad => \key~combout\(3),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X15_Y12_N2
\WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\key~combout\(2) & \WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~combout\(2),
	datac => \WideOr2~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X14_Y14_N20
\freq[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq[16]~feeder_combout\ = \freq~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \freq~7_combout\,
	combout => \freq[16]~feeder_combout\);

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

-- Location: LCCOMB_X15_Y15_N0
\cnt[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~32_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~33\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~32_combout\,
	cout => \cnt[0]~33\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[4]~I\ : cycloneii_io
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
	padio => ww_key(4),
	combout => \key~combout\(4));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
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
	padio => ww_key(2),
	combout => \key~combout\(2));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[3]~I\ : cycloneii_io
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
	padio => ww_key(3),
	combout => \key~combout\(3));

-- Location: LCCOMB_X15_Y12_N28
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\key~combout\(0) & ((\key~combout\(4) & (\key~combout\(2) $ (\key~combout\(3)))) # (!\key~combout\(4) & (\key~combout\(2) & \key~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(4),
	datac => \key~combout\(2),
	datad => \key~combout\(3),
	combout => \WideOr1~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X14_Y14_N22
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\WideOr1~0_combout\ & \key~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr1~0_combout\,
	datad => \key~combout\(1),
	combout => \WideOr1~1_combout\);

-- Location: LCFF_X14_Y14_N23
\freq[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(18));

-- Location: LCCOMB_X15_Y12_N10
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\key~combout\(0) & ((\key~combout\(1) & (\key~combout\(2) $ (\key~combout\(3)))) # (!\key~combout\(1) & (\key~combout\(2) & \key~combout\(3))))) # (!\key~combout\(0) & (\key~combout\(1) & (\key~combout\(2) & \key~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(1),
	datac => \key~combout\(2),
	datad => \key~combout\(3),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X15_Y12_N12
\WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\key~combout\(0) & (\key~combout\(1) & (\key~combout\(2) & \key~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(1),
	datac => \key~combout\(2),
	datad => \key~combout\(3),
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X14_Y12_N10
\WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\key~combout\(4) & (!\WideOr0~0_combout\)) # (!\key~combout\(4) & ((!\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~0_combout\,
	datac => \WideOr0~1_combout\,
	datad => \key~combout\(4),
	combout => \WideOr0~2_combout\);

-- Location: LCFF_X14_Y14_N9
\freq[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \WideOr0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(19));

-- Location: LCCOMB_X15_Y14_N6
\cnt[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[19]~70_combout\ = (cnt(19) & (!\cnt[18]~69\)) # (!cnt(19) & ((\cnt[18]~69\) # (GND)))
-- \cnt[19]~71\ = CARRY((!\cnt[18]~69\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datad => VCC,
	cin => \cnt[18]~69\,
	combout => \cnt[19]~70_combout\,
	cout => \cnt[19]~71\);

-- Location: LCFF_X15_Y14_N7
\cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[19]~70_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19));

-- Location: LCCOMB_X14_Y14_N8
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (cnt(18) & (freq(18) & (freq(19) $ (!cnt(19))))) # (!cnt(18) & (!freq(18) & (freq(19) $ (!cnt(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datab => freq(18),
	datac => freq(19),
	datad => cnt(19),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X14_Y12_N24
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\key~combout\(4)) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr0~0_combout\,
	datad => \key~combout\(4),
	combout => \WideOr4~0_combout\);

-- Location: LCFF_X14_Y14_N17
\freq[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \WideOr4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(13));

-- Location: LCCOMB_X14_Y14_N16
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (freq(15) & (!cnt(15) & (freq(13) $ (!cnt(13))))) # (!freq(15) & (cnt(15) & (freq(13) $ (!cnt(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => freq(15),
	datab => cnt(15),
	datac => freq(13),
	datad => cnt(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X15_Y15_N6
\cnt[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[3]~38_combout\ = (cnt(3) & (!\cnt[2]~37\)) # (!cnt(3) & ((\cnt[2]~37\) # (GND)))
-- \cnt[3]~39\ = CARRY((!\cnt[2]~37\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~37\,
	combout => \cnt[3]~38_combout\,
	cout => \cnt[3]~39\);

-- Location: LCFF_X15_Y15_N7
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[3]~38_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X14_Y15_N4
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!cnt(1) & (!cnt(0) & (!cnt(3) & !cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => cnt(3),
	datad => cnt(2),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X14_Y14_N18
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X15_Y12_N22
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\key~combout\(1) & ((\key~combout\(0) & (\key~combout\(2) $ (\key~combout\(4)))) # (!\key~combout\(0) & (\key~combout\(2) & \key~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(2),
	datac => \key~combout\(4),
	datad => \key~combout\(1),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X14_Y14_N28
\WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (!\key~combout\(3)) # (!\WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr3~0_combout\,
	datac => \key~combout\(3),
	combout => \WideOr3~1_combout\);

-- Location: LCFF_X14_Y14_N29
\freq[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(15));

-- Location: LCCOMB_X15_Y12_N18
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\key~combout\(1) & ((\key~combout\(0) & (\key~combout\(4) $ (\key~combout\(3)))) # (!\key~combout\(0) & (\key~combout\(4) & \key~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(1),
	datac => \key~combout\(4),
	datad => \key~combout\(3),
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X15_Y12_N4
\WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (!\key~combout\(2)) # (!\WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr5~0_combout\,
	datac => \key~combout\(2),
	combout => \WideOr5~1_combout\);

-- Location: LCFF_X14_Y14_N3
\freq[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \WideOr5~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(6));

-- Location: LCCOMB_X15_Y15_N10
\cnt[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[5]~42_combout\ = (cnt(5) & (!\cnt[4]~41\)) # (!cnt(5) & ((\cnt[4]~41\) # (GND)))
-- \cnt[5]~43\ = CARRY((!\cnt[4]~41\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~41\,
	combout => \cnt[5]~42_combout\,
	cout => \cnt[5]~43\);

-- Location: LCFF_X15_Y15_N11
\cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[5]~42_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LCCOMB_X14_Y14_N2
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(6) & (freq(6) & (freq(15) $ (cnt(5))))) # (!cnt(6) & (!freq(6) & (freq(15) $ (cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => freq(15),
	datac => freq(6),
	datad => cnt(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y12_N0
\freq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~0_combout\ = (\key~combout\(1) & (\key~combout\(2) & (\key~combout\(0) $ (\key~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(1),
	datac => \key~combout\(2),
	datad => \key~combout\(3),
	combout => \freq~0_combout\);

-- Location: LCCOMB_X14_Y12_N2
\freq~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~1_combout\ = (!\key~combout\(4)) # (!\freq~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq~0_combout\,
	datad => \key~combout\(4),
	combout => \freq~1_combout\);

-- Location: LCFF_X14_Y15_N17
\freq[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \freq~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(8));

-- Location: LCCOMB_X15_Y12_N30
\freq~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~2_combout\ = (\key~combout\(0) & (\key~combout\(2) & (\key~combout\(4) $ (\key~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(2),
	datac => \key~combout\(4),
	datad => \key~combout\(1),
	combout => \freq~2_combout\);

-- Location: LCCOMB_X14_Y15_N6
\freq~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \freq~3_combout\ = (\freq~2_combout\ & \key~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq~2_combout\,
	datad => \key~combout\(3),
	combout => \freq~3_combout\);

-- Location: LCFF_X14_Y15_N7
\freq[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freq~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => freq(9));

-- Location: LCCOMB_X14_Y15_N16
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (cnt(8) & (freq(8) & (cnt(7) $ (freq(9))))) # (!cnt(8) & (!freq(8) & (cnt(7) $ (freq(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datab => cnt(7),
	datac => freq(8),
	datad => freq(9),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y15_N20
\cnt[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[10]~52_combout\ = (cnt(10) & (\cnt[9]~51\ $ (GND))) # (!cnt(10) & (!\cnt[9]~51\ & VCC))
-- \cnt[10]~53\ = CARRY((cnt(10) & !\cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datad => VCC,
	cin => \cnt[9]~51\,
	combout => \cnt[10]~52_combout\,
	cout => \cnt[10]~53\);

-- Location: LCFF_X15_Y15_N21
\cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[10]~52_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LCCOMB_X14_Y14_N12
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (freq(9) & (!cnt(9) & (freq(18) $ (cnt(10))))) # (!freq(9) & (cnt(9) & (freq(18) $ (cnt(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => freq(9),
	datab => freq(18),
	datac => cnt(9),
	datad => cnt(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X14_Y14_N26
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X14_Y14_N0
\Equal0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (\Equal0~9_combout\ & (\Equal0~14_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~14_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~15_combout\);

-- Location: LCFF_X15_Y15_N1
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[0]~32_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X15_Y15_N2
\cnt[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[1]~34_combout\ = (cnt(1) & (!\cnt[0]~33\)) # (!cnt(1) & ((\cnt[0]~33\) # (GND)))
-- \cnt[1]~35\ = CARRY((!\cnt[0]~33\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \cnt[0]~33\,
	combout => \cnt[1]~34_combout\,
	cout => \cnt[1]~35\);

-- Location: LCFF_X15_Y15_N3
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[1]~34_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X15_Y15_N4
\cnt[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~36_combout\ = (cnt(2) & (\cnt[1]~35\ $ (GND))) # (!cnt(2) & (!\cnt[1]~35\ & VCC))
-- \cnt[2]~37\ = CARRY((cnt(2) & !\cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~35\,
	combout => \cnt[2]~36_combout\,
	cout => \cnt[2]~37\);

-- Location: LCFF_X15_Y15_N5
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[2]~36_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X15_Y15_N8
\cnt[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[4]~40_combout\ = (cnt(4) & (\cnt[3]~39\ $ (GND))) # (!cnt(4) & (!\cnt[3]~39\ & VCC))
-- \cnt[4]~41\ = CARRY((cnt(4) & !\cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~39\,
	combout => \cnt[4]~40_combout\,
	cout => \cnt[4]~41\);

-- Location: LCFF_X15_Y15_N9
\cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[4]~40_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LCCOMB_X15_Y15_N14
\cnt[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[7]~46_combout\ = (cnt(7) & (!\cnt[6]~45\)) # (!cnt(7) & ((\cnt[6]~45\) # (GND)))
-- \cnt[7]~47\ = CARRY((!\cnt[6]~45\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~45\,
	combout => \cnt[7]~46_combout\,
	cout => \cnt[7]~47\);

-- Location: LCFF_X15_Y15_N15
\cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[7]~46_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LCCOMB_X15_Y15_N18
\cnt[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[9]~50_combout\ = (cnt(9) & (!\cnt[8]~49\)) # (!cnt(9) & ((\cnt[8]~49\) # (GND)))
-- \cnt[9]~51\ = CARRY((!\cnt[8]~49\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \cnt[8]~49\,
	combout => \cnt[9]~50_combout\,
	cout => \cnt[9]~51\);

-- Location: LCFF_X15_Y15_N19
\cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[9]~50_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LCCOMB_X15_Y15_N22
\cnt[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[11]~54_combout\ = (cnt(11) & (!\cnt[10]~53\)) # (!cnt(11) & ((\cnt[10]~53\) # (GND)))
-- \cnt[11]~55\ = CARRY((!\cnt[10]~53\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \cnt[10]~53\,
	combout => \cnt[11]~54_combout\,
	cout => \cnt[11]~55\);

-- Location: LCFF_X15_Y15_N23
\cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[11]~54_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LCCOMB_X15_Y15_N26
\cnt[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[13]~58_combout\ = (cnt(13) & (!\cnt[12]~57\)) # (!cnt(13) & ((\cnt[12]~57\) # (GND)))
-- \cnt[13]~59\ = CARRY((!\cnt[12]~57\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \cnt[12]~57\,
	combout => \cnt[13]~58_combout\,
	cout => \cnt[13]~59\);

-- Location: LCFF_X15_Y15_N27
\cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[13]~58_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13));

-- Location: LCCOMB_X15_Y15_N28
\cnt[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[14]~60_combout\ = (cnt(14) & (\cnt[13]~59\ $ (GND))) # (!cnt(14) & (!\cnt[13]~59\ & VCC))
-- \cnt[14]~61\ = CARRY((cnt(14) & !\cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \cnt[13]~59\,
	combout => \cnt[14]~60_combout\,
	cout => \cnt[14]~61\);

-- Location: LCFF_X16_Y14_N29
\cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \cnt[14]~60_combout\,
	sclr => \Equal0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LCCOMB_X15_Y15_N30
\cnt[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[15]~62_combout\ = (cnt(15) & (!\cnt[14]~61\)) # (!cnt(15) & ((\cnt[14]~61\) # (GND)))
-- \cnt[15]~63\ = CARRY((!\cnt[14]~61\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	datad => VCC,
	cin => \cnt[14]~61\,
	combout => \cnt[15]~62_combout\,
	cout => \cnt[15]~63\);

-- Location: LCFF_X15_Y15_N31
\cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[15]~62_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15));

-- Location: LCCOMB_X15_Y14_N0
\cnt[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[16]~64_combout\ = (cnt(16) & (\cnt[15]~63\ $ (GND))) # (!cnt(16) & (!\cnt[15]~63\ & VCC))
-- \cnt[16]~65\ = CARRY((cnt(16) & !\cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \cnt[15]~63\,
	combout => \cnt[16]~64_combout\,
	cout => \cnt[16]~65\);

-- Location: LCFF_X15_Y14_N1
\cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[16]~64_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LCCOMB_X15_Y14_N2
\cnt[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[17]~66_combout\ = (cnt(17) & (!\cnt[16]~65\)) # (!cnt(17) & ((\cnt[16]~65\) # (GND)))
-- \cnt[17]~67\ = CARRY((!\cnt[16]~65\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \cnt[16]~65\,
	combout => \cnt[17]~66_combout\,
	cout => \cnt[17]~67\);

-- Location: LCFF_X15_Y14_N3
\cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[17]~66_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17));

-- Location: LCCOMB_X15_Y14_N4
\cnt[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[18]~68_combout\ = (cnt(18) & (\cnt[17]~67\ $ (GND))) # (!cnt(18) & (!\cnt[17]~67\ & VCC))
-- \cnt[18]~69\ = CARRY((cnt(18) & !\cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \cnt[17]~67\,
	combout => \cnt[18]~68_combout\,
	cout => \cnt[18]~69\);

-- Location: LCFF_X15_Y14_N5
\cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[18]~68_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18));

-- Location: LCCOMB_X15_Y14_N8
\cnt[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[20]~72_combout\ = (cnt(20) & (\cnt[19]~71\ $ (GND))) # (!cnt(20) & (!\cnt[19]~71\ & VCC))
-- \cnt[20]~73\ = CARRY((cnt(20) & !\cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \cnt[19]~71\,
	combout => \cnt[20]~72_combout\,
	cout => \cnt[20]~73\);

-- Location: LCFF_X15_Y14_N9
\cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[20]~72_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(20));

-- Location: LCCOMB_X15_Y14_N10
\cnt[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[21]~74_combout\ = (cnt(21) & (!\cnt[20]~73\)) # (!cnt(21) & ((\cnt[20]~73\) # (GND)))
-- \cnt[21]~75\ = CARRY((!\cnt[20]~73\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(21),
	datad => VCC,
	cin => \cnt[20]~73\,
	combout => \cnt[21]~74_combout\,
	cout => \cnt[21]~75\);

-- Location: LCCOMB_X15_Y14_N12
\cnt[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[22]~76_combout\ = (cnt(22) & (\cnt[21]~75\ $ (GND))) # (!cnt(22) & (!\cnt[21]~75\ & VCC))
-- \cnt[22]~77\ = CARRY((cnt(22) & !\cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datad => VCC,
	cin => \cnt[21]~75\,
	combout => \cnt[22]~76_combout\,
	cout => \cnt[22]~77\);

-- Location: LCCOMB_X15_Y14_N14
\cnt[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[23]~78_combout\ = (cnt(23) & (!\cnt[22]~77\)) # (!cnt(23) & ((\cnt[22]~77\) # (GND)))
-- \cnt[23]~79\ = CARRY((!\cnt[22]~77\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(23),
	datad => VCC,
	cin => \cnt[22]~77\,
	combout => \cnt[23]~78_combout\,
	cout => \cnt[23]~79\);

-- Location: LCFF_X15_Y14_N15
\cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[23]~78_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23));

-- Location: LCCOMB_X15_Y14_N16
\cnt[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[24]~80_combout\ = (cnt(24) & (\cnt[23]~79\ $ (GND))) # (!cnt(24) & (!\cnt[23]~79\ & VCC))
-- \cnt[24]~81\ = CARRY((cnt(24) & !\cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datad => VCC,
	cin => \cnt[23]~79\,
	combout => \cnt[24]~80_combout\,
	cout => \cnt[24]~81\);

-- Location: LCCOMB_X15_Y14_N18
\cnt[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[25]~82_combout\ = (cnt(25) & (!\cnt[24]~81\)) # (!cnt(25) & ((\cnt[24]~81\) # (GND)))
-- \cnt[25]~83\ = CARRY((!\cnt[24]~81\) # (!cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(25),
	datad => VCC,
	cin => \cnt[24]~81\,
	combout => \cnt[25]~82_combout\,
	cout => \cnt[25]~83\);

-- Location: LCFF_X15_Y14_N19
\cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[25]~82_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(25));

-- Location: LCCOMB_X15_Y14_N22
\cnt[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[27]~86_combout\ = (cnt(27) & (!\cnt[26]~85\)) # (!cnt(27) & ((\cnt[26]~85\) # (GND)))
-- \cnt[27]~87\ = CARRY((!\cnt[26]~85\) # (!cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(27),
	datad => VCC,
	cin => \cnt[26]~85\,
	combout => \cnt[27]~86_combout\,
	cout => \cnt[27]~87\);

-- Location: LCFF_X15_Y14_N23
\cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[27]~86_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(27));

-- Location: LCCOMB_X15_Y14_N26
\cnt[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[29]~90_combout\ = (cnt(29) & (!\cnt[28]~89\)) # (!cnt(29) & ((\cnt[28]~89\) # (GND)))
-- \cnt[29]~91\ = CARRY((!\cnt[28]~89\) # (!cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(29),
	datad => VCC,
	cin => \cnt[28]~89\,
	combout => \cnt[29]~90_combout\,
	cout => \cnt[29]~91\);

-- Location: LCFF_X15_Y14_N27
\cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[29]~90_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(29));

-- Location: LCCOMB_X15_Y14_N28
\cnt[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[30]~92_combout\ = (cnt(30) & (\cnt[29]~91\ $ (GND))) # (!cnt(30) & (!\cnt[29]~91\ & VCC))
-- \cnt[30]~93\ = CARRY((cnt(30) & !\cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(30),
	datad => VCC,
	cin => \cnt[29]~91\,
	combout => \cnt[30]~92_combout\,
	cout => \cnt[30]~93\);

-- Location: LCFF_X15_Y14_N29
\cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[30]~92_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(30));

-- Location: LCCOMB_X15_Y14_N30
\cnt[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[31]~94_combout\ = \cnt[30]~93\ $ (cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(31),
	cin => \cnt[30]~93\,
	combout => \cnt[31]~94_combout\);

-- Location: LCFF_X15_Y14_N31
\cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[31]~94_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(31));

-- Location: LCCOMB_X14_Y14_N4
\Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!cnt(31) & !cnt(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(31),
	datad => cnt(30),
	combout => \Equal0~13_combout\);

-- Location: LCFF_X15_Y14_N17
\cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[24]~80_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(24));

-- Location: LCFF_X15_Y14_N13
\cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[22]~76_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22));

-- Location: LCCOMB_X16_Y14_N20
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!cnt(23) & (!cnt(24) & (!cnt(25) & !cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datab => cnt(24),
	datac => cnt(25),
	datad => cnt(22),
	combout => \Equal0~11_combout\);

-- Location: LCFF_X15_Y14_N11
\cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[21]~74_combout\,
	sclr => \Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21));

-- Location: LCCOMB_X16_Y14_N26
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!cnt(20) & (!cnt(14) & (!cnt(4) & !cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(20),
	datab => cnt(14),
	datac => cnt(4),
	datad => cnt(21),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X14_Y14_N14
\Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Equal0~12_combout\ & (\Equal0~13_combout\ & (\Equal0~11_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~12_combout\,
	datab => \Equal0~13_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X14_Y14_N24
\beep~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \beep~0_combout\ = \beep~reg0_regout\ $ (((\Equal0~9_combout\ & (\Equal0~14_combout\ & \Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~14_combout\,
	datac => \beep~reg0_regout\,
	datad => \Equal0~4_combout\,
	combout => \beep~0_combout\);

-- Location: LCFF_X14_Y14_N25
\beep~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \beep~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \beep~reg0_regout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y12_N24
\led[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led[0]~reg0feeder_combout\ = \key~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key~combout\(0),
	combout => \led[0]~reg0feeder_combout\);

-- Location: LCFF_X15_Y12_N25
\led[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LCCOMB_X4_Y14_N20
\led[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led[1]~reg0feeder_combout\ = \key~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key~combout\(1),
	combout => \led[1]~reg0feeder_combout\);

-- Location: LCFF_X4_Y14_N21
\led[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LCFF_X15_Y12_N15
\led[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \key~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LCCOMB_X15_Y12_N8
\led[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led[3]~reg0feeder_combout\ = \key~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key~combout\(3),
	combout => \led[3]~reg0feeder_combout\);

-- Location: LCFF_X15_Y12_N9
\led[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: LCCOMB_X14_Y12_N12
\led[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led[4]~reg0feeder_combout\ = \key~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key~combout\(4),
	combout => \led[4]~reg0feeder_combout\);

-- Location: LCFF_X14_Y12_N13
\led[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[4]~reg0_regout\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\beep~I\ : cycloneii_io
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
	datain => \beep~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_beep);

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
END structure;


