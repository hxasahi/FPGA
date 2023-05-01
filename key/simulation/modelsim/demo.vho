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

-- DATE "05/01/2023 20:45:41"

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
	key : IN std_logic;
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
-- key	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_key : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \key_flag~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt_20ms[0]~20_combout\ : std_logic;
SIGNAL \cnt_20ms[0]~21\ : std_logic;
SIGNAL \cnt_20ms[1]~22_combout\ : std_logic;
SIGNAL \cnt_20ms[1]~23\ : std_logic;
SIGNAL \cnt_20ms[2]~24_combout\ : std_logic;
SIGNAL \cnt_20ms[2]~25\ : std_logic;
SIGNAL \cnt_20ms[3]~26_combout\ : std_logic;
SIGNAL \cnt_20ms[3]~27\ : std_logic;
SIGNAL \cnt_20ms[4]~28_combout\ : std_logic;
SIGNAL \cnt_20ms[4]~29\ : std_logic;
SIGNAL \cnt_20ms[5]~30_combout\ : std_logic;
SIGNAL \cnt_20ms[5]~31\ : std_logic;
SIGNAL \cnt_20ms[6]~32_combout\ : std_logic;
SIGNAL \cnt_20ms[6]~33\ : std_logic;
SIGNAL \cnt_20ms[7]~34_combout\ : std_logic;
SIGNAL \cnt_20ms[7]~35\ : std_logic;
SIGNAL \cnt_20ms[8]~36_combout\ : std_logic;
SIGNAL \cnt_20ms[8]~37\ : std_logic;
SIGNAL \cnt_20ms[9]~38_combout\ : std_logic;
SIGNAL \cnt_20ms[9]~39\ : std_logic;
SIGNAL \cnt_20ms[10]~40_combout\ : std_logic;
SIGNAL \cnt_20ms[10]~41\ : std_logic;
SIGNAL \cnt_20ms[11]~42_combout\ : std_logic;
SIGNAL \cnt_20ms[11]~43\ : std_logic;
SIGNAL \cnt_20ms[12]~44_combout\ : std_logic;
SIGNAL \cnt_20ms[12]~45\ : std_logic;
SIGNAL \cnt_20ms[13]~46_combout\ : std_logic;
SIGNAL \cnt_20ms[13]~47\ : std_logic;
SIGNAL \cnt_20ms[14]~48_combout\ : std_logic;
SIGNAL \cnt_20ms[14]~49\ : std_logic;
SIGNAL \cnt_20ms[15]~50_combout\ : std_logic;
SIGNAL \cnt_20ms[15]~51\ : std_logic;
SIGNAL \cnt_20ms[16]~52_combout\ : std_logic;
SIGNAL \cnt_20ms[16]~53\ : std_logic;
SIGNAL \cnt_20ms[17]~54_combout\ : std_logic;
SIGNAL \cnt_20ms[17]~55\ : std_logic;
SIGNAL \cnt_20ms[18]~56_combout\ : std_logic;
SIGNAL \cnt_20ms[18]~57\ : std_logic;
SIGNAL \cnt_20ms[19]~58_combout\ : std_logic;
SIGNAL \key_flag~regout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \key~combout\ : std_logic;
SIGNAL \key_flag~clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~3_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt[2]~1_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \led[4]~reg0_regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \led[5]~reg0_regout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \led[6]~reg0_regout\ : std_logic;
SIGNAL \led[7]~reg0_regout\ : std_logic;
SIGNAL cnt_20ms : std_logic_vector(19 DOWNTO 0);
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_key <= key;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\key_flag~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_flag~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X1_Y8_N15
\cnt_20ms[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[17]~54_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(17));

-- Location: LCFF_X1_Y8_N17
\cnt_20ms[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[18]~56_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(18));

-- Location: LCFF_X1_Y8_N19
\cnt_20ms[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[19]~58_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(19));

-- Location: LCFF_X1_Y9_N15
\cnt_20ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[1]~22_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(1));

-- Location: LCFF_X1_Y9_N17
\cnt_20ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[2]~24_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(2));

-- Location: LCFF_X1_Y9_N19
\cnt_20ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[3]~26_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(3));

-- Location: LCFF_X1_Y9_N21
\cnt_20ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[4]~28_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(4));

-- Location: LCFF_X1_Y9_N23
\cnt_20ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[5]~30_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(5));

-- Location: LCFF_X1_Y9_N25
\cnt_20ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[6]~32_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(6));

-- Location: LCFF_X1_Y9_N27
\cnt_20ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[7]~34_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(7));

-- Location: LCFF_X1_Y9_N29
\cnt_20ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[8]~36_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(8));

-- Location: LCFF_X1_Y9_N31
\cnt_20ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[9]~38_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(9));

-- Location: LCFF_X1_Y8_N1
\cnt_20ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[10]~40_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(10));

-- Location: LCFF_X2_Y9_N17
\cnt_20ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \cnt_20ms[11]~42_combout\,
	sclr => \key~combout\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(11));

-- Location: LCFF_X2_Y9_N31
\cnt_20ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \cnt_20ms[12]~44_combout\,
	sclr => \key~combout\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(12));

-- Location: LCFF_X1_Y8_N9
\cnt_20ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[14]~48_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(14));

-- Location: LCFF_X1_Y8_N13
\cnt_20ms[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[16]~52_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(16));

-- Location: LCFF_X1_Y8_N7
\cnt_20ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[13]~46_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(13));

-- Location: LCFF_X1_Y8_N11
\cnt_20ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[15]~50_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(15));

-- Location: LCFF_X1_Y9_N13
\cnt_20ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt_20ms[0]~20_combout\,
	sclr => \key~combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_20ms(0));

-- Location: LCCOMB_X1_Y9_N12
\cnt_20ms[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[0]~20_combout\ = cnt_20ms(0) $ (VCC)
-- \cnt_20ms[0]~21\ = CARRY(cnt_20ms(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(0),
	datad => VCC,
	combout => \cnt_20ms[0]~20_combout\,
	cout => \cnt_20ms[0]~21\);

-- Location: LCCOMB_X1_Y9_N14
\cnt_20ms[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[1]~22_combout\ = (cnt_20ms(1) & (!\cnt_20ms[0]~21\)) # (!cnt_20ms(1) & ((\cnt_20ms[0]~21\) # (GND)))
-- \cnt_20ms[1]~23\ = CARRY((!\cnt_20ms[0]~21\) # (!cnt_20ms(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(1),
	datad => VCC,
	cin => \cnt_20ms[0]~21\,
	combout => \cnt_20ms[1]~22_combout\,
	cout => \cnt_20ms[1]~23\);

-- Location: LCCOMB_X1_Y9_N16
\cnt_20ms[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[2]~24_combout\ = (cnt_20ms(2) & (\cnt_20ms[1]~23\ $ (GND))) # (!cnt_20ms(2) & (!\cnt_20ms[1]~23\ & VCC))
-- \cnt_20ms[2]~25\ = CARRY((cnt_20ms(2) & !\cnt_20ms[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(2),
	datad => VCC,
	cin => \cnt_20ms[1]~23\,
	combout => \cnt_20ms[2]~24_combout\,
	cout => \cnt_20ms[2]~25\);

-- Location: LCCOMB_X1_Y9_N18
\cnt_20ms[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[3]~26_combout\ = (cnt_20ms(3) & (!\cnt_20ms[2]~25\)) # (!cnt_20ms(3) & ((\cnt_20ms[2]~25\) # (GND)))
-- \cnt_20ms[3]~27\ = CARRY((!\cnt_20ms[2]~25\) # (!cnt_20ms(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(3),
	datad => VCC,
	cin => \cnt_20ms[2]~25\,
	combout => \cnt_20ms[3]~26_combout\,
	cout => \cnt_20ms[3]~27\);

-- Location: LCCOMB_X1_Y9_N20
\cnt_20ms[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[4]~28_combout\ = (cnt_20ms(4) & (\cnt_20ms[3]~27\ $ (GND))) # (!cnt_20ms(4) & (!\cnt_20ms[3]~27\ & VCC))
-- \cnt_20ms[4]~29\ = CARRY((cnt_20ms(4) & !\cnt_20ms[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(4),
	datad => VCC,
	cin => \cnt_20ms[3]~27\,
	combout => \cnt_20ms[4]~28_combout\,
	cout => \cnt_20ms[4]~29\);

-- Location: LCCOMB_X1_Y9_N22
\cnt_20ms[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[5]~30_combout\ = (cnt_20ms(5) & (!\cnt_20ms[4]~29\)) # (!cnt_20ms(5) & ((\cnt_20ms[4]~29\) # (GND)))
-- \cnt_20ms[5]~31\ = CARRY((!\cnt_20ms[4]~29\) # (!cnt_20ms(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(5),
	datad => VCC,
	cin => \cnt_20ms[4]~29\,
	combout => \cnt_20ms[5]~30_combout\,
	cout => \cnt_20ms[5]~31\);

-- Location: LCCOMB_X1_Y9_N24
\cnt_20ms[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[6]~32_combout\ = (cnt_20ms(6) & (\cnt_20ms[5]~31\ $ (GND))) # (!cnt_20ms(6) & (!\cnt_20ms[5]~31\ & VCC))
-- \cnt_20ms[6]~33\ = CARRY((cnt_20ms(6) & !\cnt_20ms[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(6),
	datad => VCC,
	cin => \cnt_20ms[5]~31\,
	combout => \cnt_20ms[6]~32_combout\,
	cout => \cnt_20ms[6]~33\);

-- Location: LCCOMB_X1_Y9_N26
\cnt_20ms[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[7]~34_combout\ = (cnt_20ms(7) & (!\cnt_20ms[6]~33\)) # (!cnt_20ms(7) & ((\cnt_20ms[6]~33\) # (GND)))
-- \cnt_20ms[7]~35\ = CARRY((!\cnt_20ms[6]~33\) # (!cnt_20ms(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(7),
	datad => VCC,
	cin => \cnt_20ms[6]~33\,
	combout => \cnt_20ms[7]~34_combout\,
	cout => \cnt_20ms[7]~35\);

-- Location: LCCOMB_X1_Y9_N28
\cnt_20ms[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[8]~36_combout\ = (cnt_20ms(8) & (\cnt_20ms[7]~35\ $ (GND))) # (!cnt_20ms(8) & (!\cnt_20ms[7]~35\ & VCC))
-- \cnt_20ms[8]~37\ = CARRY((cnt_20ms(8) & !\cnt_20ms[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(8),
	datad => VCC,
	cin => \cnt_20ms[7]~35\,
	combout => \cnt_20ms[8]~36_combout\,
	cout => \cnt_20ms[8]~37\);

-- Location: LCCOMB_X1_Y9_N30
\cnt_20ms[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[9]~38_combout\ = (cnt_20ms(9) & (!\cnt_20ms[8]~37\)) # (!cnt_20ms(9) & ((\cnt_20ms[8]~37\) # (GND)))
-- \cnt_20ms[9]~39\ = CARRY((!\cnt_20ms[8]~37\) # (!cnt_20ms(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(9),
	datad => VCC,
	cin => \cnt_20ms[8]~37\,
	combout => \cnt_20ms[9]~38_combout\,
	cout => \cnt_20ms[9]~39\);

-- Location: LCCOMB_X1_Y8_N0
\cnt_20ms[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[10]~40_combout\ = (cnt_20ms(10) & (\cnt_20ms[9]~39\ $ (GND))) # (!cnt_20ms(10) & (!\cnt_20ms[9]~39\ & VCC))
-- \cnt_20ms[10]~41\ = CARRY((cnt_20ms(10) & !\cnt_20ms[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(10),
	datad => VCC,
	cin => \cnt_20ms[9]~39\,
	combout => \cnt_20ms[10]~40_combout\,
	cout => \cnt_20ms[10]~41\);

-- Location: LCCOMB_X1_Y8_N2
\cnt_20ms[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[11]~42_combout\ = (cnt_20ms(11) & (!\cnt_20ms[10]~41\)) # (!cnt_20ms(11) & ((\cnt_20ms[10]~41\) # (GND)))
-- \cnt_20ms[11]~43\ = CARRY((!\cnt_20ms[10]~41\) # (!cnt_20ms(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(11),
	datad => VCC,
	cin => \cnt_20ms[10]~41\,
	combout => \cnt_20ms[11]~42_combout\,
	cout => \cnt_20ms[11]~43\);

-- Location: LCCOMB_X1_Y8_N4
\cnt_20ms[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[12]~44_combout\ = (cnt_20ms(12) & (\cnt_20ms[11]~43\ $ (GND))) # (!cnt_20ms(12) & (!\cnt_20ms[11]~43\ & VCC))
-- \cnt_20ms[12]~45\ = CARRY((cnt_20ms(12) & !\cnt_20ms[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(12),
	datad => VCC,
	cin => \cnt_20ms[11]~43\,
	combout => \cnt_20ms[12]~44_combout\,
	cout => \cnt_20ms[12]~45\);

-- Location: LCCOMB_X1_Y8_N6
\cnt_20ms[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[13]~46_combout\ = (cnt_20ms(13) & (!\cnt_20ms[12]~45\)) # (!cnt_20ms(13) & ((\cnt_20ms[12]~45\) # (GND)))
-- \cnt_20ms[13]~47\ = CARRY((!\cnt_20ms[12]~45\) # (!cnt_20ms(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(13),
	datad => VCC,
	cin => \cnt_20ms[12]~45\,
	combout => \cnt_20ms[13]~46_combout\,
	cout => \cnt_20ms[13]~47\);

-- Location: LCCOMB_X1_Y8_N8
\cnt_20ms[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[14]~48_combout\ = (cnt_20ms(14) & (\cnt_20ms[13]~47\ $ (GND))) # (!cnt_20ms(14) & (!\cnt_20ms[13]~47\ & VCC))
-- \cnt_20ms[14]~49\ = CARRY((cnt_20ms(14) & !\cnt_20ms[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(14),
	datad => VCC,
	cin => \cnt_20ms[13]~47\,
	combout => \cnt_20ms[14]~48_combout\,
	cout => \cnt_20ms[14]~49\);

-- Location: LCCOMB_X1_Y8_N10
\cnt_20ms[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[15]~50_combout\ = (cnt_20ms(15) & (!\cnt_20ms[14]~49\)) # (!cnt_20ms(15) & ((\cnt_20ms[14]~49\) # (GND)))
-- \cnt_20ms[15]~51\ = CARRY((!\cnt_20ms[14]~49\) # (!cnt_20ms(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(15),
	datad => VCC,
	cin => \cnt_20ms[14]~49\,
	combout => \cnt_20ms[15]~50_combout\,
	cout => \cnt_20ms[15]~51\);

-- Location: LCCOMB_X1_Y8_N12
\cnt_20ms[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[16]~52_combout\ = (cnt_20ms(16) & (\cnt_20ms[15]~51\ $ (GND))) # (!cnt_20ms(16) & (!\cnt_20ms[15]~51\ & VCC))
-- \cnt_20ms[16]~53\ = CARRY((cnt_20ms(16) & !\cnt_20ms[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(16),
	datad => VCC,
	cin => \cnt_20ms[15]~51\,
	combout => \cnt_20ms[16]~52_combout\,
	cout => \cnt_20ms[16]~53\);

-- Location: LCCOMB_X1_Y8_N14
\cnt_20ms[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[17]~54_combout\ = (cnt_20ms(17) & (!\cnt_20ms[16]~53\)) # (!cnt_20ms(17) & ((\cnt_20ms[16]~53\) # (GND)))
-- \cnt_20ms[17]~55\ = CARRY((!\cnt_20ms[16]~53\) # (!cnt_20ms(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(17),
	datad => VCC,
	cin => \cnt_20ms[16]~53\,
	combout => \cnt_20ms[17]~54_combout\,
	cout => \cnt_20ms[17]~55\);

-- Location: LCCOMB_X1_Y8_N16
\cnt_20ms[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[18]~56_combout\ = (cnt_20ms(18) & (\cnt_20ms[17]~55\ $ (GND))) # (!cnt_20ms(18) & (!\cnt_20ms[17]~55\ & VCC))
-- \cnt_20ms[18]~57\ = CARRY((cnt_20ms(18) & !\cnt_20ms[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(18),
	datad => VCC,
	cin => \cnt_20ms[17]~55\,
	combout => \cnt_20ms[18]~56_combout\,
	cout => \cnt_20ms[18]~57\);

-- Location: LCCOMB_X1_Y8_N18
\cnt_20ms[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_20ms[19]~58_combout\ = \cnt_20ms[18]~57\ $ (cnt_20ms(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_20ms(19),
	cin => \cnt_20ms[18]~57\,
	combout => \cnt_20ms[19]~58_combout\);

-- Location: LCFF_X1_Y9_N5
key_flag : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_flag~regout\);

-- Location: LCCOMB_X1_Y8_N28
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (cnt_20ms(17) & (cnt_20ms(18) & cnt_20ms(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(17),
	datac => cnt_20ms(18),
	datad => cnt_20ms(19),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y9_N2
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (cnt_20ms(2) & (cnt_20ms(1) & (cnt_20ms(4) & cnt_20ms(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(2),
	datab => cnt_20ms(1),
	datac => cnt_20ms(4),
	datad => cnt_20ms(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X1_Y9_N6
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!cnt_20ms(6) & (!cnt_20ms(7) & (cnt_20ms(5) & !cnt_20ms(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(6),
	datab => cnt_20ms(7),
	datac => cnt_20ms(5),
	datad => cnt_20ms(8),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X1_Y9_N8
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (cnt_20ms(9) & (!cnt_20ms(12) & (!cnt_20ms(11) & !cnt_20ms(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(9),
	datab => cnt_20ms(12),
	datac => cnt_20ms(11),
	datad => cnt_20ms(10),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X1_Y8_N30
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (cnt_20ms(16) & (cnt_20ms(14) & (!cnt_20ms(15) & !cnt_20ms(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(16),
	datab => cnt_20ms(14),
	datac => cnt_20ms(15),
	datad => cnt_20ms(13),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X1_Y9_N0
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~2_combout\ & (\Equal1~1_combout\ & (\Equal1~3_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X1_Y9_N4
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~0_combout\ & (!cnt_20ms(0) & \Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => cnt_20ms(0),
	datad => \Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X1_Y9_N10
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\key~combout\) # (((!\Equal1~5_combout\) # (!\Equal1~0_combout\)) # (!cnt_20ms(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\,
	datab => cnt_20ms(0),
	datac => \Equal1~0_combout\,
	datad => \Equal1~5_combout\,
	combout => \always0~0_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key~I\ : cycloneii_io
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
	padio => ww_key,
	combout => \key~combout\);

-- Location: CLKCTRL_G3
\key_flag~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key_flag~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_flag~clkctrl_outclk\);

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

-- Location: LCCOMB_X2_Y8_N28
\cnt[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~3_combout\ = !cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(0),
	combout => \cnt[0]~3_combout\);

-- Location: LCFF_X2_Y8_N29
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_flag~clkctrl_outclk\,
	datain => \cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X2_Y8_N30
\cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (cnt(1) & (((!cnt(0))))) # (!cnt(1) & (cnt(0) & ((cnt(2)) # (!cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(0),
	combout => \cnt~0_combout\);

-- Location: LCFF_X2_Y8_N31
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_flag~clkctrl_outclk\,
	datain => \cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X2_Y8_N0
\cnt[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~1_combout\ = cnt(2) $ (((cnt(1) & cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datac => cnt(2),
	datad => cnt(0),
	combout => \cnt[2]~1_combout\);

-- Location: LCFF_X2_Y8_N1
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_flag~clkctrl_outclk\,
	datain => \cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X2_Y8_N14
\cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (cnt(1) & (cnt(3) $ (((cnt(2) & cnt(0)))))) # (!cnt(1) & (cnt(3) & ((cnt(2)) # (!cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(0),
	combout => \cnt~2_combout\);

-- Location: LCFF_X2_Y8_N15
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_flag~clkctrl_outclk\,
	datain => \cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X2_Y8_N12
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (cnt(2) & (((cnt(3))))) # (!cnt(2) & ((cnt(1) & ((cnt(3)))) # (!cnt(1) & (cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => cnt(0),
	datac => cnt(3),
	datad => cnt(1),
	combout => \WideOr6~0_combout\);

-- Location: LCFF_X2_Y8_N13
\led[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N2
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (cnt(0) & (((cnt(3))))) # (!cnt(0) & ((cnt(2) & (cnt(3))) # (!cnt(2) & ((cnt(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(1),
	combout => \WideOr5~0_combout\);

-- Location: LCFF_X2_Y8_N3
\led[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N20
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (cnt(0) & ((cnt(3)) # ((!cnt(2) & cnt(1))))) # (!cnt(0) & (cnt(3) & ((cnt(2)) # (cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(1),
	combout => \WideOr4~0_combout\);

-- Location: LCFF_X2_Y8_N21
\led[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N18
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (cnt(0) & (((cnt(3))))) # (!cnt(0) & ((cnt(1) & ((cnt(3)))) # (!cnt(1) & (cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(1),
	combout => \WideOr3~0_combout\);

-- Location: LCFF_X2_Y8_N19
\led[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N24
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (cnt(0) & ((cnt(3)) # ((cnt(2) & !cnt(1))))) # (!cnt(0) & (cnt(3) & ((cnt(2)) # (cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(1),
	combout => \WideOr2~0_combout\);

-- Location: LCFF_X2_Y8_N25
\led[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[4]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N26
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (cnt(0) & (((cnt(3))))) # (!cnt(0) & ((cnt(2) & ((cnt(3)) # (cnt(1)))) # (!cnt(2) & (cnt(3) & cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(3),
	datad => cnt(1),
	combout => \WideOr1~0_combout\);

-- Location: LCFF_X2_Y8_N27
\led[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[5]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N16
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (cnt(2) & ((cnt(3)) # ((cnt(0) & cnt(1))))) # (!cnt(2) & (cnt(3) & ((cnt(0)) # (cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => cnt(0),
	datac => cnt(3),
	datad => cnt(1),
	combout => \WideOr0~0_combout\);

-- Location: LCFF_X2_Y8_N17
\led[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[6]~reg0_regout\);

-- Location: LCFF_X2_Y8_N23
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


