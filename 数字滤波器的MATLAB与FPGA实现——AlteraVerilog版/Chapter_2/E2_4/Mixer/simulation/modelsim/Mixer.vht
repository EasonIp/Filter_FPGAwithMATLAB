-- Copyright (C) 1991-2012 Altera Corporation
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
-- Generated on "05/18/2014 10:37:26"
                                                            
-- Vhdl Test Bench template for design  :  Mixer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mixer_vhd_tst IS
END Mixer_vhd_tst;
ARCHITECTURE Mixer_arch OF Mixer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL din : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL dout : STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL ldmix : STD_LOGIC;
SIGNAL ldoc : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL s_oc : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT Mixer
	PORT (
	clk : IN STD_LOGIC;
	din : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	dout : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	ldmix : OUT STD_LOGIC;
	ldoc : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	s_oc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mixer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	din => din,
	dout => dout,
	ldmix => ldmix,
	ldoc => ldoc,
	rst => rst,
	s_oc => s_oc
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
END Mixer_arch;
