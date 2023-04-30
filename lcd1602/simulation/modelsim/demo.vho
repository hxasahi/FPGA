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

-- DATE "04/30/2023 20:19:54"

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
	rst_n : IN std_logic;
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
-- rst_n	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_dat : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL \rst_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[4]~21_combout\ : std_logic;
SIGNAL \counter[9]~31_combout\ : std_logic;
SIGNAL \counter[11]~35_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~45_combout\ : std_logic;
SIGNAL \rst_n~combout\ : std_logic;
SIGNAL \rst_n~clkctrl_outclk\ : std_logic;
SIGNAL \counter[1]~16\ : std_logic;
SIGNAL \counter[2]~17_combout\ : std_logic;
SIGNAL \counter[2]~18\ : std_logic;
SIGNAL \counter[3]~19_combout\ : std_logic;
SIGNAL \counter[3]~20\ : std_logic;
SIGNAL \counter[4]~22\ : std_logic;
SIGNAL \counter[5]~23_combout\ : std_logic;
SIGNAL \counter[5]~24\ : std_logic;
SIGNAL \counter[6]~25_combout\ : std_logic;
SIGNAL \counter[6]~26\ : std_logic;
SIGNAL \counter[7]~28\ : std_logic;
SIGNAL \counter[8]~29_combout\ : std_logic;
SIGNAL \counter[8]~30\ : std_logic;
SIGNAL \counter[9]~32\ : std_logic;
SIGNAL \counter[10]~33_combout\ : std_logic;
SIGNAL \counter[10]~34\ : std_logic;
SIGNAL \counter[11]~36\ : std_logic;
SIGNAL \counter[12]~37_combout\ : std_logic;
SIGNAL \counter[12]~38\ : std_logic;
SIGNAL \counter[13]~39_combout\ : std_logic;
SIGNAL \counter[13]~40\ : std_logic;
SIGNAL \counter[14]~41_combout\ : std_logic;
SIGNAL \counter[14]~42\ : std_logic;
SIGNAL \counter[15]~43_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \counter[7]~27_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \counter[1]~15_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clkr~0_combout\ : std_logic;
SIGNAL \clkr~regout\ : std_logic;
SIGNAL \clkr~clkctrl_outclk\ : std_logic;
SIGNAL \current.set0~feeder_combout\ : std_logic;
SIGNAL \current.set0~regout\ : std_logic;
SIGNAL \current.set1~0_combout\ : std_logic;
SIGNAL \current.set1~regout\ : std_logic;
SIGNAL \current.set2~regout\ : std_logic;
SIGNAL \current.set3~regout\ : std_logic;
SIGNAL \current.set4~regout\ : std_logic;
SIGNAL \current.dat0~regout\ : std_logic;
SIGNAL \current.dat1~regout\ : std_logic;
SIGNAL \current.dat2~regout\ : std_logic;
SIGNAL \current.dat3~feeder_combout\ : std_logic;
SIGNAL \current.dat3~regout\ : std_logic;
SIGNAL \current.dat4~feeder_combout\ : std_logic;
SIGNAL \current.dat4~regout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \current.dat5~regout\ : std_logic;
SIGNAL \current.dat6~feeder_combout\ : std_logic;
SIGNAL \current.dat6~regout\ : std_logic;
SIGNAL \current.dat7~regout\ : std_logic;
SIGNAL \current.dat8~feeder_combout\ : std_logic;
SIGNAL \current.dat8~regout\ : std_logic;
SIGNAL \current.dat9~regout\ : std_logic;
SIGNAL \current.dat10~feeder_combout\ : std_logic;
SIGNAL \current.dat10~regout\ : std_logic;
SIGNAL \current.dat11~feeder_combout\ : std_logic;
SIGNAL \current.dat11~regout\ : std_logic;
SIGNAL \current.dat12~regout\ : std_logic;
SIGNAL \current.dat13~regout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \dat[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \dat[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \current.dat14~regout\ : std_logic;
SIGNAL \current.dat15~feeder_combout\ : std_logic;
SIGNAL \current.dat15~regout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \dat[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \dat[3]~reg0_regout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \dat[4]~reg0_regout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \dat[5]~reg0_regout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \dat[6]~reg0_regout\ : std_logic;
SIGNAL \dat[7]~reg0_regout\ : std_logic;
SIGNAL \current.fini~0_combout\ : std_logic;
SIGNAL \current.fini~regout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \rs~reg0_regout\ : std_logic;
SIGNAL \e~0_combout\ : std_logic;
SIGNAL \e~regout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
dat <= ww_dat;
rs <= ww_rs;
rw <= ww_rw;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst_n~combout\);

\clkr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clkr~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst_n~clkctrl_outclk\ <= NOT \rst_n~clkctrl_outclk\;

-- Location: LCFF_X2_Y7_N7
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[4]~21_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCFF_X2_Y7_N17
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[9]~31_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCFF_X2_Y7_N21
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[11]~35_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X2_Y7_N6
\counter[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~21_combout\ = (counter(4) & (!\counter[3]~20\)) # (!counter(4) & ((\counter[3]~20\) # (GND)))
-- \counter[4]~22\ = CARRY((!\counter[3]~20\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~20\,
	combout => \counter[4]~21_combout\,
	cout => \counter[4]~22\);

-- Location: LCCOMB_X2_Y7_N16
\counter[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~31_combout\ = (counter(9) & (\counter[8]~30\ $ (GND))) # (!counter(9) & (!\counter[8]~30\ & VCC))
-- \counter[9]~32\ = CARRY((counter(9) & !\counter[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~30\,
	combout => \counter[9]~31_combout\,
	cout => \counter[9]~32\);

-- Location: LCCOMB_X2_Y7_N20
\counter[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~35_combout\ = (counter(11) & (\counter[10]~34\ $ (GND))) # (!counter(11) & (!\counter[10]~34\ & VCC))
-- \counter[11]~36\ = CARRY((counter(11) & !\counter[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~34\,
	combout => \counter[11]~35_combout\,
	cout => \counter[11]~36\);

-- Location: LCCOMB_X1_Y7_N6
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(9) & (!counter(10) & (!counter(8) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(10),
	datac => counter(8),
	datad => counter(11),
	combout => \Equal0~2_combout\);

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

-- Location: LCCOMB_X1_Y7_N10
\counter[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~45_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => counter(0),
	combout => \counter[0]~45_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst_n~I\ : cycloneii_io
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
	padio => ww_rst_n,
	combout => \rst_n~combout\);

-- Location: CLKCTRL_G1
\rst_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~clkctrl_outclk\);

-- Location: LCFF_X2_Y7_N31
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \counter[0]~45_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X2_Y7_N0
\counter[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~15_combout\ = (counter(1) & (counter(0) $ (VCC))) # (!counter(1) & (counter(0) & VCC))
-- \counter[1]~16\ = CARRY((counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => VCC,
	combout => \counter[1]~15_combout\,
	cout => \counter[1]~16\);

-- Location: LCCOMB_X2_Y7_N2
\counter[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~17_combout\ = (counter(2) & (!\counter[1]~16\)) # (!counter(2) & ((\counter[1]~16\) # (GND)))
-- \counter[2]~18\ = CARRY((!\counter[1]~16\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~16\,
	combout => \counter[2]~17_combout\,
	cout => \counter[2]~18\);

-- Location: LCFF_X2_Y7_N3
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[2]~17_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X2_Y7_N4
\counter[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~19_combout\ = (counter(3) & (\counter[2]~18\ $ (GND))) # (!counter(3) & (!\counter[2]~18\ & VCC))
-- \counter[3]~20\ = CARRY((counter(3) & !\counter[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~18\,
	combout => \counter[3]~19_combout\,
	cout => \counter[3]~20\);

-- Location: LCFF_X2_Y7_N5
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[3]~19_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X2_Y7_N8
\counter[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~23_combout\ = (counter(5) & (\counter[4]~22\ $ (GND))) # (!counter(5) & (!\counter[4]~22\ & VCC))
-- \counter[5]~24\ = CARRY((counter(5) & !\counter[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~22\,
	combout => \counter[5]~23_combout\,
	cout => \counter[5]~24\);

-- Location: LCFF_X2_Y7_N9
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[5]~23_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X2_Y7_N10
\counter[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~25_combout\ = (counter(6) & (!\counter[5]~24\)) # (!counter(6) & ((\counter[5]~24\) # (GND)))
-- \counter[6]~26\ = CARRY((!\counter[5]~24\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~24\,
	combout => \counter[6]~25_combout\,
	cout => \counter[6]~26\);

-- Location: LCFF_X2_Y7_N11
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[6]~25_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X2_Y7_N12
\counter[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~27_combout\ = (counter(7) & (\counter[6]~26\ $ (GND))) # (!counter(7) & (!\counter[6]~26\ & VCC))
-- \counter[7]~28\ = CARRY((counter(7) & !\counter[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~26\,
	combout => \counter[7]~27_combout\,
	cout => \counter[7]~28\);

-- Location: LCCOMB_X2_Y7_N14
\counter[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~29_combout\ = (counter(8) & (!\counter[7]~28\)) # (!counter(8) & ((\counter[7]~28\) # (GND)))
-- \counter[8]~30\ = CARRY((!\counter[7]~28\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~28\,
	combout => \counter[8]~29_combout\,
	cout => \counter[8]~30\);

-- Location: LCFF_X2_Y7_N15
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[8]~29_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X2_Y7_N18
\counter[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~33_combout\ = (counter(10) & (!\counter[9]~32\)) # (!counter(10) & ((\counter[9]~32\) # (GND)))
-- \counter[10]~34\ = CARRY((!\counter[9]~32\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~32\,
	combout => \counter[10]~33_combout\,
	cout => \counter[10]~34\);

-- Location: LCFF_X2_Y7_N19
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[10]~33_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X2_Y7_N22
\counter[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~37_combout\ = (counter(12) & (!\counter[11]~36\)) # (!counter(12) & ((\counter[11]~36\) # (GND)))
-- \counter[12]~38\ = CARRY((!\counter[11]~36\) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~36\,
	combout => \counter[12]~37_combout\,
	cout => \counter[12]~38\);

-- Location: LCFF_X2_Y7_N23
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[12]~37_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X2_Y7_N24
\counter[13]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~39_combout\ = (counter(13) & (\counter[12]~38\ $ (GND))) # (!counter(13) & (!\counter[12]~38\ & VCC))
-- \counter[13]~40\ = CARRY((counter(13) & !\counter[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~38\,
	combout => \counter[13]~39_combout\,
	cout => \counter[13]~40\);

-- Location: LCFF_X2_Y7_N25
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[13]~39_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X2_Y7_N26
\counter[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~41_combout\ = (counter(14) & (!\counter[13]~40\)) # (!counter(14) & ((\counter[13]~40\) # (GND)))
-- \counter[14]~42\ = CARRY((!\counter[13]~40\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~40\,
	combout => \counter[14]~41_combout\,
	cout => \counter[14]~42\);

-- Location: LCFF_X2_Y7_N27
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[14]~41_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X2_Y7_N28
\counter[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~43_combout\ = \counter[14]~42\ $ (!counter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(15),
	cin => \counter[14]~42\,
	combout => \counter[15]~43_combout\);

-- Location: LCFF_X2_Y7_N29
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[15]~43_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X1_Y7_N30
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(14) & (!counter(12) & (!counter(13) & !counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(12),
	datac => counter(13),
	datad => counter(15),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X2_Y7_N13
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[7]~27_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X1_Y7_N24
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(4) & (!counter(5) & (!counter(7) & !counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => counter(7),
	datad => counter(6),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X2_Y7_N1
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[1]~15_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X2_Y7_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(3) & (counter(2) & (counter(0) & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(0),
	datad => counter(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y7_N0
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y7_N12
\clkr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkr~0_combout\ = \clkr~regout\ $ (\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkr~regout\,
	datad => \Equal0~4_combout\,
	combout => \clkr~0_combout\);

-- Location: LCFF_X1_Y7_N13
clkr : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clkr~0_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkr~regout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X2_Y8_N24
\current.set0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.set0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \current.set0~feeder_combout\);

-- Location: LCFF_X2_Y8_N25
\current.set0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.set0~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.set0~regout\);

-- Location: LCCOMB_X1_Y8_N16
\current.set1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.set1~0_combout\ = !\current.set0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.set0~regout\,
	combout => \current.set1~0_combout\);

-- Location: LCFF_X1_Y8_N17
\current.set1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.set1~0_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.set1~regout\);

-- Location: LCFF_X1_Y8_N7
\current.set2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.set1~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.set2~regout\);

-- Location: LCFF_X1_Y8_N1
\current.set3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.set2~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.set3~regout\);

-- Location: LCFF_X2_Y8_N13
\current.set4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.set3~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.set4~regout\);

-- Location: LCFF_X2_Y8_N17
\current.dat0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.set4~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat0~regout\);

-- Location: LCFF_X1_Y8_N5
\current.dat1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat0~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat1~regout\);

-- Location: LCFF_X1_Y8_N3
\current.dat2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat1~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat2~regout\);

-- Location: LCCOMB_X1_Y8_N26
\current.dat3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.dat3~feeder_combout\ = \current.dat2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.dat2~regout\,
	combout => \current.dat3~feeder_combout\);

-- Location: LCFF_X1_Y8_N27
\current.dat3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.dat3~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat3~regout\);

-- Location: LCCOMB_X1_Y8_N30
\current.dat4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.dat4~feeder_combout\ = \current.dat3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.dat3~regout\,
	combout => \current.dat4~feeder_combout\);

-- Location: LCFF_X1_Y8_N31
\current.dat4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.dat4~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat4~regout\);

-- Location: LCCOMB_X1_Y8_N0
\WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\current.dat8~regout\) # ((\current.dat4~regout\) # ((\current.set3~regout\) # (\current.dat1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat8~regout\,
	datab => \current.dat4~regout\,
	datac => \current.set3~regout\,
	datad => \current.dat1~regout\,
	combout => \WideOr7~0_combout\);

-- Location: LCFF_X2_Y8_N19
\current.dat5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat4~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat5~regout\);

-- Location: LCCOMB_X2_Y8_N6
\current.dat6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.dat6~feeder_combout\ = \current.dat5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.dat5~regout\,
	combout => \current.dat6~feeder_combout\);

-- Location: LCFF_X2_Y8_N7
\current.dat6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.dat6~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat6~regout\);

-- Location: LCFF_X2_Y8_N21
\current.dat7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat6~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat7~regout\);

-- Location: LCCOMB_X1_Y8_N24
\current.dat8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.dat8~feeder_combout\ = \current.dat7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.dat7~regout\,
	combout => \current.dat8~feeder_combout\);

-- Location: LCFF_X1_Y8_N25
\current.dat8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.dat8~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat8~regout\);

-- Location: LCFF_X2_Y8_N31
\current.dat9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat8~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat9~regout\);

-- Location: LCCOMB_X2_Y8_N10
\current.dat10~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.dat10~feeder_combout\ = \current.dat9~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.dat9~regout\,
	combout => \current.dat10~feeder_combout\);

-- Location: LCFF_X2_Y8_N11
\current.dat10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.dat10~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat10~regout\);

-- Location: LCCOMB_X2_Y8_N26
\current.dat11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.dat11~feeder_combout\ = \current.dat10~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.dat10~regout\,
	combout => \current.dat11~feeder_combout\);

-- Location: LCFF_X2_Y8_N27
\current.dat11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.dat11~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat11~regout\);

-- Location: LCFF_X2_Y8_N15
\current.dat12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat11~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat12~regout\);

-- Location: LCFF_X2_Y8_N23
\current.dat13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat12~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat13~regout\);

-- Location: LCCOMB_X2_Y8_N30
\WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~1_combout\ = (\current.dat10~regout\) # ((\current.dat11~regout\) # ((\current.dat9~regout\) # (\current.dat13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat10~regout\,
	datab => \current.dat11~regout\,
	datac => \current.dat9~regout\,
	datad => \current.dat13~regout\,
	combout => \WideOr7~1_combout\);

-- Location: LCCOMB_X1_Y8_N22
WideOr7 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\WideOr7~0_combout\) # (\WideOr7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr7~0_combout\,
	datad => \WideOr7~1_combout\,
	combout => \WideOr7~combout\);

-- Location: LCFF_X1_Y8_N23
\dat[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr7~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[0]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N14
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\current.dat15~regout\) # ((\current.dat13~regout\) # ((\current.dat12~regout\) # (\current.set2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat15~regout\,
	datab => \current.dat13~regout\,
	datac => \current.dat12~regout\,
	datad => \current.set2~regout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X2_Y8_N2
WideOr6 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\current.dat6~regout\) # ((\current.dat4~regout\) # ((\current.dat8~regout\) # (\WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat6~regout\,
	datab => \current.dat4~regout\,
	datac => \current.dat8~regout\,
	datad => \WideOr6~0_combout\,
	combout => \WideOr6~combout\);

-- Location: LCFF_X2_Y8_N3
\dat[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr6~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[1]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N18
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\current.dat6~regout\ & (!\current.dat1~regout\ & (!\current.dat4~regout\ & !\current.dat8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat6~regout\,
	datab => \current.dat1~regout\,
	datac => \current.dat4~regout\,
	datad => \current.dat8~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCFF_X1_Y8_N19
\current.dat14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.dat13~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat14~regout\);

-- Location: LCCOMB_X1_Y8_N14
\current.dat15~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.dat15~feeder_combout\ = \current.dat14~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current.dat14~regout\,
	combout => \current.dat15~feeder_combout\);

-- Location: LCFF_X1_Y8_N15
\current.dat15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.dat15~feeder_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.dat15~regout\);

-- Location: LCCOMB_X1_Y8_N18
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\current.set1~regout\) # ((\current.dat15~regout\) # ((\current.dat14~regout\) # (\current.set2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.set1~regout\,
	datab => \current.dat15~regout\,
	datac => \current.dat14~regout\,
	datad => \current.set2~regout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X2_Y8_N0
WideOr5 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\current.dat2~regout\) # (((\WideOr5~0_combout\) # (\current.dat3~regout\)) # (!\WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat2~regout\,
	datab => \WideOr1~0_combout\,
	datac => \WideOr5~0_combout\,
	datad => \current.dat3~regout\,
	combout => \WideOr5~combout\);

-- Location: LCFF_X2_Y8_N1
\dat[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr5~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y8_N2
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\current.set1~regout\) # ((\current.dat3~regout\) # ((\current.dat2~regout\) # (!\current.set0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.set1~regout\,
	datab => \current.dat3~regout\,
	datac => \current.dat2~regout\,
	datad => \current.set0~regout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y8_N20
WideOr4 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\current.dat0~regout\) # ((\current.dat4~regout\) # (\WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat0~regout\,
	datac => \current.dat4~regout\,
	datad => \WideOr4~0_combout\,
	combout => \WideOr4~combout\);

-- Location: LCFF_X1_Y8_N21
\dat[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr4~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[3]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N22
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\current.set0~regout\ & (!\current.dat12~regout\ & (!\current.dat13~regout\ & !\current.dat15~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.set0~regout\,
	datab => \current.dat12~regout\,
	datac => \current.dat13~regout\,
	datad => \current.dat15~regout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X2_Y8_N4
WideOr3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\current.dat11~regout\) # ((\current.dat14~regout\) # ((\current.dat7~regout\) # (!\WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat11~regout\,
	datab => \current.dat14~regout\,
	datac => \WideOr2~0_combout\,
	datad => \current.dat7~regout\,
	combout => \WideOr3~combout\);

-- Location: LCFF_X2_Y8_N5
\dat[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr3~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[4]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N20
\WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (!\current.dat11~regout\ & !\current.dat14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.dat11~regout\,
	datad => \current.dat14~regout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X2_Y8_N28
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ((\current.dat5~regout\) # ((\current.dat10~regout\) # (!\WideOr2~1_combout\))) # (!\WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \current.dat5~regout\,
	datac => \WideOr2~1_combout\,
	datad => \current.dat10~regout\,
	combout => \WideOr2~combout\);

-- Location: LCFF_X2_Y8_N29
\dat[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr2~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[5]~reg0_regout\);

-- Location: LCCOMB_X2_Y8_N16
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\current.set4~regout\) # ((\current.dat7~regout\) # ((\current.dat0~regout\) # (\current.dat9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.set4~regout\,
	datab => \current.dat7~regout\,
	datac => \current.dat0~regout\,
	datad => \current.dat9~regout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X2_Y8_N8
WideOr1 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\current.dat2~regout\) # ((\current.dat3~regout\) # ((\WideOr1~1_combout\) # (!\WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dat2~regout\,
	datab => \current.dat3~regout\,
	datac => \WideOr1~1_combout\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr1~combout\);

-- Location: LCFF_X2_Y8_N9
\dat[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr1~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[6]~reg0_regout\);

-- Location: LCFF_X1_Y8_N13
\dat[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	sdata => \current.set4~regout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dat[7]~reg0_regout\);

-- Location: LCCOMB_X1_Y8_N8
\current.fini~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current.fini~0_combout\ = (\current.fini~regout\) # (\current.dat15~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current.fini~regout\,
	datad => \current.dat15~regout\,
	combout => \current.fini~0_combout\);

-- Location: LCFF_X1_Y8_N9
\current.fini\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \current.fini~0_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current.fini~regout\);

-- Location: LCCOMB_X1_Y8_N6
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\current.set1~regout\) # ((\current.fini~regout\) # ((\current.set2~regout\) # (!\current.set0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.set1~regout\,
	datab => \current.fini~regout\,
	datac => \current.set2~regout\,
	datad => \current.set0~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y8_N28
WideOr0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (!\current.set3~regout\ & (!\current.set4~regout\ & !\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.set3~regout\,
	datab => \current.set4~regout\,
	datac => \WideOr0~0_combout\,
	combout => \WideOr0~combout\);

-- Location: LCFF_X1_Y8_N29
\rs~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \WideOr0~combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rs~reg0_regout\);

-- Location: LCCOMB_X1_Y8_N10
\e~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \e~0_combout\ = !\current.fini~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current.fini~regout\,
	combout => \e~0_combout\);

-- Location: LCFF_X1_Y8_N11
e : cycloneii_lcell_ff
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	datain => \e~0_combout\,
	aclr => \ALT_INV_rst_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e~regout\);

-- Location: LCCOMB_X1_Y7_N20
\en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \en~0_combout\ = (\clkr~regout\) # (!\e~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e~regout\,
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
	datain => \dat[5]~reg0_regout\,
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


