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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/18/2023 22:55:34"
                                                            
-- Vhdl Test Bench template for design  :  demo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demo_vhd_tst IS
END demo_vhd_tst;
ARCHITECTURE demo_arch OF demo_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dat : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL rs : STD_LOGIC;
SIGNAL rw : STD_LOGIC;
COMPONENT demo
	PORT (
	clk : IN STD_LOGIC;
	dat : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : OUT STD_LOGIC;
	rs : OUT STD_LOGIC;
	rw : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : demo
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dat => dat,
	en => en,
	rs => rs,
	rw => rw
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END demo_arch;
