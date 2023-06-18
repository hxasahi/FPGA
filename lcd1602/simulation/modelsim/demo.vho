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

-- DATE "06/18/2023 22:45:22"

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
	dat : OUT std_logic_vector(7 DOWNTO 0);
	rs : OUT std_logic;
	rw : OUT std_logic;
	en : OUT std_logic
	);
END demo;

-- Design Ports Information
-- dat[0]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dat[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dat[2]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dat[3]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dat[4]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dat[5]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dat[6]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dat[7]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rs	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rw	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- en	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_dat : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL \clkr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[3]~22_combout\ : std_logic;
SIGNAL \counter[8]~32_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~16_combout\ : std_logic;
SIGNAL \counter[0]~17\ : std_logic;
SIGNAL \counter[1]~18_combout\ : std_logic;
SIGNAL \counter[1]~19\ : std_logic;
SIGNAL \counter[2]~20_combout\ : std_logic;
SIGNAL \counter[2]~21\ : std_logic;
SIGNAL \counter[3]~23\ : std_logic;
SIGNAL \counter[4]~24_combout\ : std_logic;
SIGNAL \counter[4]~25\ : std_logic;
SIGNAL \counter[5]~27\ : std_logic;
SIGNAL \counter[6]~29\ : std_logic;
SIGNAL \counter[7]~30_combout\ : std_logic;
SIGNAL \counter[6]~28_combout\ : std_logic;
SIGNAL \counter[5]~26_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \counter[7]~31\ : std_logic;
SIGNAL \counter[8]~33\ : std_logic;
SIGNAL \counter[9]~34_combout\ : std_logic;
SIGNAL \counter[9]~35\ : std_logic;
SIGNAL \counter[10]~37\ : std_logic;
SIGNAL \counter[11]~38_combout\ : std_logic;
SIGNAL \counter[11]~39\ : std_logic;
SIGNAL \counter[12]~40_combout\ : std_logic;
SIGNAL \counter[10]~36_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter[12]~41\ : std_logic;
SIGNAL \counter[13]~42_combout\ : std_logic;
SIGNAL \counter[13]~43\ : std_logic;
SIGNAL \counter[14]~44_combout\ : std_logic;
SIGNAL \counter[14]~45\ : std_logic;
SIGNAL \counter[15]~46_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clkr~0_combout\ : std_logic;
SIGNAL \clkr~regout\ : std_logic;
SIGNAL \clkr~clkctrl_outclk\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \dat[0]~0_combout\ : std_logic;
SIGNAL \dat[0]~reg0_regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \dat[1]~reg0_regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \dat[2]~reg0_regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \dat[3]~reg0_regout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \dat[4]~reg0_regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \dat[6]~reg0_regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \dat[7]~reg0_regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \rs~0_combout\ : std_logic;
SIGNAL \rs~reg0_regout\ : std_logic;
SIGNAL \e~regout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL current : std_logic_vector(5 DOWNTO 0);
SIGNAL counter : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
dat <= ww_dat;
rs <= ww_rs;
rw <= ww_rw;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clkr~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X4_Y7_N7
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCFF_X4_Y7_N17
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X4_Y7_N6
\counter[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~22_combout\ = (counter(3) & (!\counter[2]~21\)) # (!counter(3) & ((\counter[2]~21\) # (GND)))
-- \counter[3]~23\ = CARRY((!\counter[2]~21\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~21\,
	combout => \counter[3]~22_combout\,
	cout => \counter[3]~23\);

-- Location: LCCOMB_X4_Y7_N16
\counter[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~32_combout\ = (counter(8) & (\counter[7]~31\ $ (GND))) # (!counter(8) & (!\counter[7]~31\ & VCC))
-- \counter[8]~33\ = CARRY((counter(8) & !\counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~31\,
	combout => \counter[8]~32_combout\,
	cout => \counter[8]~33\);

-- Location: LCCOMB_X3_Y7_N6
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(2) & (counter(0) & (counter(1) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \Equal0~0_combout\);

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

-- Location: LCCOMB_X4_Y7_N0
\counter[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~16_combout\ = counter(0) $ (VCC)
-- \counter[0]~17\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~16_combout\,
	cout => \counter[0]~17\);

-- Location: LCFF_X4_Y7_N1
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X4_Y7_N2
\counter[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~18_combout\ = (counter(1) & (!\counter[0]~17\)) # (!counter(1) & ((\counter[0]~17\) # (GND)))
-- \counter[1]~19\ = CARRY((!\counter[0]~17\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~17\,
	combout => \counter[1]~18_combout\,
	cout => \counter[1]~19\);

-- Location: LCFF_X4_Y7_N3
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X4_Y7_N4
\counter[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~20_combout\ = (counter(2) & (\counter[1]~19\ $ (GND))) # (!counter(2) & (!\counter[1]~19\ & VCC))
-- \counter[2]~21\ = CARRY((counter(2) & !\counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~19\,
	combout => \counter[2]~20_combout\,
	cout => \counter[2]~21\);

-- Location: LCFF_X4_Y7_N5
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X4_Y7_N8
\counter[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~24_combout\ = (counter(4) & (\counter[3]~23\ $ (GND))) # (!counter(4) & (!\counter[3]~23\ & VCC))
-- \counter[4]~25\ = CARRY((counter(4) & !\counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~23\,
	combout => \counter[4]~24_combout\,
	cout => \counter[4]~25\);

-- Location: LCFF_X4_Y7_N9
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X4_Y7_N10
\counter[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~26_combout\ = (counter(5) & (!\counter[4]~25\)) # (!counter(5) & ((\counter[4]~25\) # (GND)))
-- \counter[5]~27\ = CARRY((!\counter[4]~25\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~25\,
	combout => \counter[5]~26_combout\,
	cout => \counter[5]~27\);

-- Location: LCCOMB_X4_Y7_N12
\counter[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~28_combout\ = (counter(6) & (\counter[5]~27\ $ (GND))) # (!counter(6) & (!\counter[5]~27\ & VCC))
-- \counter[6]~29\ = CARRY((counter(6) & !\counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~27\,
	combout => \counter[6]~28_combout\,
	cout => \counter[6]~29\);

-- Location: LCCOMB_X4_Y7_N14
\counter[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~30_combout\ = (counter(7) & (!\counter[6]~29\)) # (!counter(7) & ((\counter[6]~29\) # (GND)))
-- \counter[7]~31\ = CARRY((!\counter[6]~29\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~29\,
	combout => \counter[7]~30_combout\,
	cout => \counter[7]~31\);

-- Location: LCFF_X4_Y7_N15
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCFF_X4_Y7_N13
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCFF_X4_Y7_N11
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X3_Y7_N2
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(4) & (counter(7) & (counter(6) & counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(7),
	datac => counter(6),
	datad => counter(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X4_Y7_N18
\counter[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~34_combout\ = (counter(9) & (!\counter[8]~33\)) # (!counter(9) & ((\counter[8]~33\) # (GND)))
-- \counter[9]~35\ = CARRY((!\counter[8]~33\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~33\,
	combout => \counter[9]~34_combout\,
	cout => \counter[9]~35\);

-- Location: LCFF_X4_Y7_N19
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X4_Y7_N20
\counter[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~36_combout\ = (counter(10) & (\counter[9]~35\ $ (GND))) # (!counter(10) & (!\counter[9]~35\ & VCC))
-- \counter[10]~37\ = CARRY((counter(10) & !\counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \counter[9]~35\,
	combout => \counter[10]~36_combout\,
	cout => \counter[10]~37\);

-- Location: LCCOMB_X4_Y7_N22
\counter[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~38_combout\ = (counter(11) & (!\counter[10]~37\)) # (!counter(11) & ((\counter[10]~37\) # (GND)))
-- \counter[11]~39\ = CARRY((!\counter[10]~37\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~37\,
	combout => \counter[11]~38_combout\,
	cout => \counter[11]~39\);

-- Location: LCFF_X4_Y7_N23
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X4_Y7_N24
\counter[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~40_combout\ = (counter(12) & (\counter[11]~39\ $ (GND))) # (!counter(12) & (!\counter[11]~39\ & VCC))
-- \counter[12]~41\ = CARRY((counter(12) & !\counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \counter[11]~39\,
	combout => \counter[12]~40_combout\,
	cout => \counter[12]~41\);

-- Location: LCFF_X4_Y7_N25
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCFF_X4_Y7_N21
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X3_Y7_N8
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(8) & (counter(9) & (counter(11) & counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(11),
	datad => counter(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X4_Y7_N26
\counter[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~42_combout\ = (counter(13) & (!\counter[12]~41\)) # (!counter(13) & ((\counter[12]~41\) # (GND)))
-- \counter[13]~43\ = CARRY((!\counter[12]~41\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~41\,
	combout => \counter[13]~42_combout\,
	cout => \counter[13]~43\);

-- Location: LCFF_X4_Y7_N27
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X4_Y7_N28
\counter[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~44_combout\ = (counter(14) & (\counter[13]~43\ $ (GND))) # (!counter(14) & (!\counter[13]~43\ & VCC))
-- \counter[14]~45\ = CARRY((counter(14) & !\counter[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~43\,
	combout => \counter[14]~44_combout\,
	cout => \counter[14]~45\);

-- Location: LCFF_X4_Y7_N29
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X4_Y7_N30
\counter[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~46_combout\ = \counter[14]~45\ $ (counter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(15),
	cin => \counter[14]~45\,
	combout => \counter[15]~46_combout\);

-- Location: LCFF_X4_Y7_N31
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X3_Y7_N0
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(15) & counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => counter(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X3_Y7_N18
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (counter(13) & (counter(12) & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(12),
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X3_Y7_N12
\clkr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkr~0_combout\ = \clkr~regout\ $ (((\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \clkr~regout\,
	datad => \Equal0~4_combout\,
	combout => \clkr~0_combout\);

-- Location: LCFF_X3_Y7_N13
clkr : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clkr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkr~regout\);

-- Location: CLKCTRL_G3
\clkr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkr~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y7_N14
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!current(4) & (!current(2) & (current(0) $ (current(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(0),
	datac => current(1),
	datad => current(2),
	combout => \Selector3~0_combout\);

-- Location: LCFF_X2_Y7_N15
\current[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(1));

-- Location: LCCOMB_X2_Y7_N10
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!current(4) & ((current(0) & (!current(2) & current(1))) # (!current(0) & (current(2) & !current(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(0),
	datac => current(2),
	datad => current(1),
	combout => \Selector2~0_combout\);

-- Location: LCFF_X2_Y7_N11
\current[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(2));

-- Location: LCCOMB_X2_Y7_N24
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (current(4) & (!current(2) & (current(0) & !current(1)))) # (!current(4) & ((current(2) & ((!current(1)))) # (!current(2) & (!current(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(2),
	datac => current(0),
	datad => current(1),
	combout => \Selector4~0_combout\);

-- Location: LCFF_X2_Y7_N25
\current[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(0));

-- Location: LCCOMB_X2_Y7_N4
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (current(0) & (!current(2) & current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current(0),
	datac => current(2),
	datad => current(1),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X2_Y7_N30
\dat[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dat[0]~0_combout\ = (!current(4) & ((!current(2)) # (!current(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datac => current(1),
	datad => current(2),
	combout => \dat[0]~0_combout\);

-- Location: LCFF_X2_Y7_N5
\dat[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	ena => \dat[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[0]~reg0_regout\);

-- Location: LCCOMB_X2_Y7_N6
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (current(1) & (!current(2) & !current(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datac => current(2),
	datad => current(0),
	combout => \Selector13~0_combout\);

-- Location: LCFF_X2_Y7_N7
\dat[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	ena => \dat[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[1]~reg0_regout\);

-- Location: LCCOMB_X2_Y7_N12
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!current(2) & (current(1) $ (current(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datad => current(0),
	combout => \Selector12~0_combout\);

-- Location: LCFF_X2_Y7_N13
\dat[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	ena => \dat[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[2]~reg0_regout\);

-- Location: LCCOMB_X2_Y7_N26
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (current(2) & (current(0))) # (!current(2) & ((!current(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current(0),
	datac => current(2),
	datad => current(1),
	combout => \Selector11~0_combout\);

-- Location: LCFF_X2_Y7_N27
\dat[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	ena => \dat[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[3]~reg0_regout\);

-- Location: LCCOMB_X2_Y7_N16
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!current(0) & (!current(2) & !current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current(0),
	datac => current(2),
	datad => current(1),
	combout => \Selector10~0_combout\);

-- Location: LCFF_X2_Y7_N17
\dat[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	ena => \dat[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[4]~reg0_regout\);

-- Location: LCCOMB_X2_Y7_N2
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (current(2) & current(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current(2),
	datad => current(0),
	combout => \Selector8~0_combout\);

-- Location: LCFF_X2_Y7_N3
\dat[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	ena => \dat[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[6]~reg0_regout\);

-- Location: LCCOMB_X2_Y7_N28
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (current(2) & !current(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current(2),
	datad => current(0),
	combout => \Selector7~0_combout\);

-- Location: LCFF_X2_Y7_N29
\dat[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	ena => \dat[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[7]~reg0_regout\);

-- Location: LCCOMB_X2_Y7_N20
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!current(1) & (current(0) & (current(2) $ (current(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => current(4),
	datad => current(0),
	combout => \Selector1~0_combout\);

-- Location: LCFF_X2_Y7_N21
\current[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(4));

-- Location: LCCOMB_X3_Y7_N16
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!current(1) & (!current(4) & (current(0) & current(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(4),
	datac => current(0),
	datad => current(2),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X2_Y7_N8
\rs~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rs~0_combout\ = (current(4) & (!current(1) & (current(0) & !current(2)))) # (!current(4) & (((!current(2))) # (!current(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(1),
	datac => current(0),
	datad => current(2),
	combout => \rs~0_combout\);

-- Location: LCFF_X3_Y7_N17
\rs~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	ena => \rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rs~reg0_regout\);

-- Location: LCFF_X3_Y7_N21
e : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => current(4),
	sload => VCC,
	ena => \rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e~regout\);

-- Location: LCCOMB_X3_Y7_N20
\en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \en~0_combout\ = (\e~regout\) # (\clkr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e~regout\,
	datad => \clkr~regout\,
	combout => \en~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[0]~I\ : cycloneii_io
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
	datain => \dat[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[1]~I\ : cycloneii_io
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
	datain => \dat[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[2]~I\ : cycloneii_io
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
	datain => \dat[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(2));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[3]~I\ : cycloneii_io
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
	datain => \dat[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[4]~I\ : cycloneii_io
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
	datain => \dat[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(4));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[5]~I\ : cycloneii_io
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
	datain => \dat[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(5));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[6]~I\ : cycloneii_io
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
	datain => \dat[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(6));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dat[7]~I\ : cycloneii_io
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
	datain => \dat[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dat(7));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rs~I\ : cycloneii_io
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
	datain => \rs~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rw~I\ : cycloneii_io
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
	padio => ww_rw);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\en~I\ : cycloneii_io
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
	datain => \en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_en);
END structure;


