-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/24/2023 14:02:00"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \inst8|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \INST7|current_state~46_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[0]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[0]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[10]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[10]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[10]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[23]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[24]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[24]~q\ : std_logic;
SIGNAL \INST2|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \INST2|clk_reg_extend[0]~feeder_combout\ : std_logic;
SIGNAL \INST2|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \INST7|current_state~37_combout\ : std_logic;
SIGNAL \INST7|current_state.s15~q\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \INST4|sreg~1_combout\ : std_logic;
SIGNAL \INST4|sreg~0_combout\ : std_logic;
SIGNAL \INST4|dout~feeder_combout\ : std_logic;
SIGNAL \INST4|dout~q\ : std_logic;
SIGNAL \INST6|sreg~0_combout\ : std_logic;
SIGNAL \INST6|sreg~q\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \INST3|sreg~1_combout\ : std_logic;
SIGNAL \INST3|sreg~0_combout\ : std_logic;
SIGNAL \INST3|dout~feeder_combout\ : std_logic;
SIGNAL \INST3|dout~q\ : std_logic;
SIGNAL \INST5|sreg~0_combout\ : std_logic;
SIGNAL \INST5|sreg~q\ : std_logic;
SIGNAL \INST7|current_state~43_combout\ : std_logic;
SIGNAL \INST7|current_state.S0~q\ : std_logic;
SIGNAL \INST7|next_state.S1~0_combout\ : std_logic;
SIGNAL \INST7|current_state.S1~q\ : std_logic;
SIGNAL \INST7|next_state.S2~0_combout\ : std_logic;
SIGNAL \INST7|current_state.S2~q\ : std_logic;
SIGNAL \INST7|current_state~36_combout\ : std_logic;
SIGNAL \INST7|current_state.S3~q\ : std_logic;
SIGNAL \INST7|current_state~38_combout\ : std_logic;
SIGNAL \INST7|current_state.S4~q\ : std_logic;
SIGNAL \INST7|current_state~39_combout\ : std_logic;
SIGNAL \INST7|current_state.S5~q\ : std_logic;
SIGNAL \INST7|Selector0~0_combout\ : std_logic;
SIGNAL \INST7|Selector0~1_combout\ : std_logic;
SIGNAL \INST7|current_state.S6~q\ : std_logic;
SIGNAL \INST7|current_state~45_combout\ : std_logic;
SIGNAL \INST7|current_state.S7~q\ : std_logic;
SIGNAL \INST7|current_state~44_combout\ : std_logic;
SIGNAL \INST7|current_state.s8~q\ : std_logic;
SIGNAL \INST7|next_state.s9~0_combout\ : std_logic;
SIGNAL \INST7|current_state.s9~q\ : std_logic;
SIGNAL \INST7|Selector1~0_combout\ : std_logic;
SIGNAL \INST7|next_state.s10~0_combout\ : std_logic;
SIGNAL \INST7|current_state.s10~q\ : std_logic;
SIGNAL \INST7|current_state~40_combout\ : std_logic;
SIGNAL \INST7|current_state.s11~q\ : std_logic;
SIGNAL \INST7|current_state~41_combout\ : std_logic;
SIGNAL \INST7|current_state.s12~q\ : std_logic;
SIGNAL \INST7|current_state~42_combout\ : std_logic;
SIGNAL \INST7|current_state.s13~q\ : std_logic;
SIGNAL \INST7|Selector1~1_combout\ : std_logic;
SIGNAL \INST7|current_state.s14~q\ : std_logic;
SIGNAL \INST7|WideOr2~1_combout\ : std_logic;
SIGNAL \inst8|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \INST7|WideOr4~combout\ : std_logic;
SIGNAL \INST7|WideOr9~combout\ : std_logic;
SIGNAL \INST7|WideOr11~0_combout\ : std_logic;
SIGNAL \INST7|WideOr12~0_combout\ : std_logic;
SIGNAL \INST7|WideOr12~combout\ : std_logic;
SIGNAL \INST7|WideOr11~1_combout\ : std_logic;
SIGNAL \INST7|WideOr11~combout\ : std_logic;
SIGNAL \inst8|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST7|WideOr2~0_combout\ : std_logic;
SIGNAL \INST7|WideOr10~combout\ : std_logic;
SIGNAL \INST7|WideOr2~combout\ : std_logic;
SIGNAL \inst8|DOUT[0]~1_combout\ : std_logic;
SIGNAL \inst8|DOUT[0]~2_combout\ : std_logic;
SIGNAL \INST2|blink_sig~0_combout\ : std_logic;
SIGNAL \INST2|blink_sig~q\ : std_logic;
SIGNAL \inst8|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst8|DOUT[3]~4_combout\ : std_logic;
SIGNAL \INST2|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST3|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST4|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \INST7|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \INST7|ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \INST7|ALT_INV_WideOr12~combout\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);
\inst8|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst8|clk_proc:COUNT[10]~q\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\INST7|ALT_INV_WideOr10~combout\ <= NOT \INST7|WideOr10~combout\;
\INST7|ALT_INV_WideOr11~combout\ <= NOT \INST7|WideOr11~combout\;
\INST7|ALT_INV_WideOr12~combout\ <= NOT \INST7|WideOr12~combout\;

-- Location: LCCOMB_X11_Y21_N20
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

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst8|DOUT_TEMP[6]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|WideOr4~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|sreg~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|WideOr9~combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|sreg~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_WideOr12~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_WideOr11~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_WideOr10~combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|WideOr2~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|DOUT[0]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|DOUT[3]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y9_N0
\inst8|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[0]~0_combout\ = !\inst8|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|clk_proc:COUNT[0]~q\,
	combout => \inst8|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X12_Y9_N1
\inst8|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X12_Y9_N6
\inst8|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[1]~1_combout\ = (\inst8|clk_proc:COUNT[1]~q\ & (\inst8|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\inst8|clk_proc:COUNT[1]~q\ & (\inst8|clk_proc:COUNT[0]~q\ & VCC))
-- \inst8|clk_proc:COUNT[1]~2\ = CARRY((\inst8|clk_proc:COUNT[1]~q\ & \inst8|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clk_proc:COUNT[1]~q\,
	datab => \inst8|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \inst8|clk_proc:COUNT[1]~1_combout\,
	cout => \inst8|clk_proc:COUNT[1]~2\);

-- Location: FF_X12_Y9_N7
\inst8|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X12_Y9_N8
\inst8|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[2]~1_combout\ = (\inst8|clk_proc:COUNT[2]~q\ & (!\inst8|clk_proc:COUNT[1]~2\)) # (!\inst8|clk_proc:COUNT[2]~q\ & ((\inst8|clk_proc:COUNT[1]~2\) # (GND)))
-- \inst8|clk_proc:COUNT[2]~2\ = CARRY((!\inst8|clk_proc:COUNT[1]~2\) # (!\inst8|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[1]~2\,
	combout => \inst8|clk_proc:COUNT[2]~1_combout\,
	cout => \inst8|clk_proc:COUNT[2]~2\);

-- Location: FF_X12_Y9_N9
\inst8|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X12_Y9_N10
\inst8|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[3]~1_combout\ = (\inst8|clk_proc:COUNT[3]~q\ & (\inst8|clk_proc:COUNT[2]~2\ $ (GND))) # (!\inst8|clk_proc:COUNT[3]~q\ & (!\inst8|clk_proc:COUNT[2]~2\ & VCC))
-- \inst8|clk_proc:COUNT[3]~2\ = CARRY((\inst8|clk_proc:COUNT[3]~q\ & !\inst8|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[2]~2\,
	combout => \inst8|clk_proc:COUNT[3]~1_combout\,
	cout => \inst8|clk_proc:COUNT[3]~2\);

-- Location: FF_X12_Y9_N11
\inst8|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X12_Y9_N12
\inst8|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[4]~1_combout\ = (\inst8|clk_proc:COUNT[4]~q\ & (!\inst8|clk_proc:COUNT[3]~2\)) # (!\inst8|clk_proc:COUNT[4]~q\ & ((\inst8|clk_proc:COUNT[3]~2\) # (GND)))
-- \inst8|clk_proc:COUNT[4]~2\ = CARRY((!\inst8|clk_proc:COUNT[3]~2\) # (!\inst8|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[3]~2\,
	combout => \inst8|clk_proc:COUNT[4]~1_combout\,
	cout => \inst8|clk_proc:COUNT[4]~2\);

-- Location: FF_X12_Y9_N13
\inst8|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X12_Y9_N14
\inst8|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[5]~1_combout\ = (\inst8|clk_proc:COUNT[5]~q\ & (\inst8|clk_proc:COUNT[4]~2\ $ (GND))) # (!\inst8|clk_proc:COUNT[5]~q\ & (!\inst8|clk_proc:COUNT[4]~2\ & VCC))
-- \inst8|clk_proc:COUNT[5]~2\ = CARRY((\inst8|clk_proc:COUNT[5]~q\ & !\inst8|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[4]~2\,
	combout => \inst8|clk_proc:COUNT[5]~1_combout\,
	cout => \inst8|clk_proc:COUNT[5]~2\);

-- Location: FF_X12_Y9_N15
\inst8|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X12_Y9_N16
\inst8|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[6]~1_combout\ = (\inst8|clk_proc:COUNT[6]~q\ & (!\inst8|clk_proc:COUNT[5]~2\)) # (!\inst8|clk_proc:COUNT[6]~q\ & ((\inst8|clk_proc:COUNT[5]~2\) # (GND)))
-- \inst8|clk_proc:COUNT[6]~2\ = CARRY((!\inst8|clk_proc:COUNT[5]~2\) # (!\inst8|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[5]~2\,
	combout => \inst8|clk_proc:COUNT[6]~1_combout\,
	cout => \inst8|clk_proc:COUNT[6]~2\);

-- Location: FF_X12_Y9_N17
\inst8|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X12_Y9_N18
\inst8|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[7]~1_combout\ = (\inst8|clk_proc:COUNT[7]~q\ & (\inst8|clk_proc:COUNT[6]~2\ $ (GND))) # (!\inst8|clk_proc:COUNT[7]~q\ & (!\inst8|clk_proc:COUNT[6]~2\ & VCC))
-- \inst8|clk_proc:COUNT[7]~2\ = CARRY((\inst8|clk_proc:COUNT[7]~q\ & !\inst8|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[6]~2\,
	combout => \inst8|clk_proc:COUNT[7]~1_combout\,
	cout => \inst8|clk_proc:COUNT[7]~2\);

-- Location: FF_X12_Y9_N19
\inst8|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X12_Y9_N20
\inst8|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[8]~1_combout\ = (\inst8|clk_proc:COUNT[8]~q\ & (!\inst8|clk_proc:COUNT[7]~2\)) # (!\inst8|clk_proc:COUNT[8]~q\ & ((\inst8|clk_proc:COUNT[7]~2\) # (GND)))
-- \inst8|clk_proc:COUNT[8]~2\ = CARRY((!\inst8|clk_proc:COUNT[7]~2\) # (!\inst8|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[7]~2\,
	combout => \inst8|clk_proc:COUNT[8]~1_combout\,
	cout => \inst8|clk_proc:COUNT[8]~2\);

-- Location: FF_X12_Y9_N21
\inst8|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X12_Y9_N22
\inst8|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[9]~1_combout\ = (\inst8|clk_proc:COUNT[9]~q\ & (\inst8|clk_proc:COUNT[8]~2\ $ (GND))) # (!\inst8|clk_proc:COUNT[9]~q\ & (!\inst8|clk_proc:COUNT[8]~2\ & VCC))
-- \inst8|clk_proc:COUNT[9]~2\ = CARRY((\inst8|clk_proc:COUNT[9]~q\ & !\inst8|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \inst8|clk_proc:COUNT[8]~2\,
	combout => \inst8|clk_proc:COUNT[9]~1_combout\,
	cout => \inst8|clk_proc:COUNT[9]~2\);

-- Location: FF_X12_Y9_N23
\inst8|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X12_Y9_N24
\inst8|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|clk_proc:COUNT[10]~1_combout\ = \inst8|clk_proc:COUNT[9]~2\ $ (\inst8|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|clk_proc:COUNT[10]~q\,
	cin => \inst8|clk_proc:COUNT[9]~2\,
	combout => \inst8|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X12_Y9_N25
\inst8|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst8|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clk_proc:COUNT[10]~q\);

-- Location: IOIBUF_X6_Y0_N15
\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

-- Location: LCCOMB_X9_Y4_N16
\INST7|current_state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~46_combout\ = (\INST7|current_state.s14~q\ & \pb_n[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|current_state.s14~q\,
	datac => \pb_n[3]~input_o\,
	combout => \INST7|current_state~46_combout\);

-- Location: LCCOMB_X7_Y4_N8
\INST2|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[0]~1_combout\ = \INST2|clk_divider:counter[0]~q\ $ (VCC)
-- \INST2|clk_divider:counter[0]~2\ = CARRY(\INST2|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \INST2|clk_divider:counter[0]~1_combout\,
	cout => \INST2|clk_divider:counter[0]~2\);

-- Location: FF_X7_Y4_N9
\INST2|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[0]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[0]~q\);

-- Location: LCCOMB_X7_Y4_N10
\INST2|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[1]~1_combout\ = (\INST2|clk_divider:counter[1]~q\ & (!\INST2|clk_divider:counter[0]~2\)) # (!\INST2|clk_divider:counter[1]~q\ & ((\INST2|clk_divider:counter[0]~2\) # (GND)))
-- \INST2|clk_divider:counter[1]~2\ = CARRY((!\INST2|clk_divider:counter[0]~2\) # (!\INST2|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[1]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[0]~2\,
	combout => \INST2|clk_divider:counter[1]~1_combout\,
	cout => \INST2|clk_divider:counter[1]~2\);

-- Location: FF_X7_Y4_N11
\INST2|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[1]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X7_Y4_N12
\INST2|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[2]~1_combout\ = (\INST2|clk_divider:counter[2]~q\ & (\INST2|clk_divider:counter[1]~2\ $ (GND))) # (!\INST2|clk_divider:counter[2]~q\ & (!\INST2|clk_divider:counter[1]~2\ & VCC))
-- \INST2|clk_divider:counter[2]~2\ = CARRY((\INST2|clk_divider:counter[2]~q\ & !\INST2|clk_divider:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[1]~2\,
	combout => \INST2|clk_divider:counter[2]~1_combout\,
	cout => \INST2|clk_divider:counter[2]~2\);

-- Location: FF_X7_Y4_N13
\INST2|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[2]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X7_Y4_N14
\INST2|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[3]~1_combout\ = (\INST2|clk_divider:counter[3]~q\ & (!\INST2|clk_divider:counter[2]~2\)) # (!\INST2|clk_divider:counter[3]~q\ & ((\INST2|clk_divider:counter[2]~2\) # (GND)))
-- \INST2|clk_divider:counter[3]~2\ = CARRY((!\INST2|clk_divider:counter[2]~2\) # (!\INST2|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[2]~2\,
	combout => \INST2|clk_divider:counter[3]~1_combout\,
	cout => \INST2|clk_divider:counter[3]~2\);

-- Location: FF_X7_Y4_N15
\INST2|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[3]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X7_Y4_N16
\INST2|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[4]~1_combout\ = (\INST2|clk_divider:counter[4]~q\ & (\INST2|clk_divider:counter[3]~2\ $ (GND))) # (!\INST2|clk_divider:counter[4]~q\ & (!\INST2|clk_divider:counter[3]~2\ & VCC))
-- \INST2|clk_divider:counter[4]~2\ = CARRY((\INST2|clk_divider:counter[4]~q\ & !\INST2|clk_divider:counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[3]~2\,
	combout => \INST2|clk_divider:counter[4]~1_combout\,
	cout => \INST2|clk_divider:counter[4]~2\);

-- Location: FF_X7_Y4_N17
\INST2|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[4]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X7_Y4_N18
\INST2|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[5]~1_combout\ = (\INST2|clk_divider:counter[5]~q\ & (!\INST2|clk_divider:counter[4]~2\)) # (!\INST2|clk_divider:counter[5]~q\ & ((\INST2|clk_divider:counter[4]~2\) # (GND)))
-- \INST2|clk_divider:counter[5]~2\ = CARRY((!\INST2|clk_divider:counter[4]~2\) # (!\INST2|clk_divider:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[4]~2\,
	combout => \INST2|clk_divider:counter[5]~1_combout\,
	cout => \INST2|clk_divider:counter[5]~2\);

-- Location: FF_X7_Y4_N19
\INST2|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[5]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X7_Y4_N20
\INST2|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[6]~1_combout\ = (\INST2|clk_divider:counter[6]~q\ & (\INST2|clk_divider:counter[5]~2\ $ (GND))) # (!\INST2|clk_divider:counter[6]~q\ & (!\INST2|clk_divider:counter[5]~2\ & VCC))
-- \INST2|clk_divider:counter[6]~2\ = CARRY((\INST2|clk_divider:counter[6]~q\ & !\INST2|clk_divider:counter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[5]~2\,
	combout => \INST2|clk_divider:counter[6]~1_combout\,
	cout => \INST2|clk_divider:counter[6]~2\);

-- Location: FF_X7_Y4_N21
\INST2|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[6]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X7_Y4_N22
\INST2|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[7]~1_combout\ = (\INST2|clk_divider:counter[7]~q\ & (!\INST2|clk_divider:counter[6]~2\)) # (!\INST2|clk_divider:counter[7]~q\ & ((\INST2|clk_divider:counter[6]~2\) # (GND)))
-- \INST2|clk_divider:counter[7]~2\ = CARRY((!\INST2|clk_divider:counter[6]~2\) # (!\INST2|clk_divider:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[6]~2\,
	combout => \INST2|clk_divider:counter[7]~1_combout\,
	cout => \INST2|clk_divider:counter[7]~2\);

-- Location: FF_X7_Y4_N23
\INST2|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[7]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X7_Y4_N24
\INST2|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[8]~1_combout\ = (\INST2|clk_divider:counter[8]~q\ & (\INST2|clk_divider:counter[7]~2\ $ (GND))) # (!\INST2|clk_divider:counter[8]~q\ & (!\INST2|clk_divider:counter[7]~2\ & VCC))
-- \INST2|clk_divider:counter[8]~2\ = CARRY((\INST2|clk_divider:counter[8]~q\ & !\INST2|clk_divider:counter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[7]~2\,
	combout => \INST2|clk_divider:counter[8]~1_combout\,
	cout => \INST2|clk_divider:counter[8]~2\);

-- Location: FF_X7_Y4_N25
\INST2|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[8]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X7_Y4_N26
\INST2|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[9]~1_combout\ = (\INST2|clk_divider:counter[9]~q\ & (!\INST2|clk_divider:counter[8]~2\)) # (!\INST2|clk_divider:counter[9]~q\ & ((\INST2|clk_divider:counter[8]~2\) # (GND)))
-- \INST2|clk_divider:counter[9]~2\ = CARRY((!\INST2|clk_divider:counter[8]~2\) # (!\INST2|clk_divider:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[8]~2\,
	combout => \INST2|clk_divider:counter[9]~1_combout\,
	cout => \INST2|clk_divider:counter[9]~2\);

-- Location: FF_X7_Y4_N27
\INST2|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[9]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X7_Y4_N28
\INST2|clk_divider:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[10]~1_combout\ = (\INST2|clk_divider:counter[10]~q\ & (\INST2|clk_divider:counter[9]~2\ $ (GND))) # (!\INST2|clk_divider:counter[10]~q\ & (!\INST2|clk_divider:counter[9]~2\ & VCC))
-- \INST2|clk_divider:counter[10]~2\ = CARRY((\INST2|clk_divider:counter[10]~q\ & !\INST2|clk_divider:counter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[10]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[9]~2\,
	combout => \INST2|clk_divider:counter[10]~1_combout\,
	cout => \INST2|clk_divider:counter[10]~2\);

-- Location: FF_X7_Y4_N29
\INST2|clk_divider:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[10]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[10]~q\);

-- Location: LCCOMB_X7_Y4_N30
\INST2|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[11]~1_combout\ = (\INST2|clk_divider:counter[11]~q\ & (!\INST2|clk_divider:counter[10]~2\)) # (!\INST2|clk_divider:counter[11]~q\ & ((\INST2|clk_divider:counter[10]~2\) # (GND)))
-- \INST2|clk_divider:counter[11]~2\ = CARRY((!\INST2|clk_divider:counter[10]~2\) # (!\INST2|clk_divider:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[10]~2\,
	combout => \INST2|clk_divider:counter[11]~1_combout\,
	cout => \INST2|clk_divider:counter[11]~2\);

-- Location: FF_X7_Y4_N31
\INST2|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[11]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X7_Y3_N0
\INST2|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[12]~1_combout\ = (\INST2|clk_divider:counter[12]~q\ & (\INST2|clk_divider:counter[11]~2\ $ (GND))) # (!\INST2|clk_divider:counter[12]~q\ & (!\INST2|clk_divider:counter[11]~2\ & VCC))
-- \INST2|clk_divider:counter[12]~2\ = CARRY((\INST2|clk_divider:counter[12]~q\ & !\INST2|clk_divider:counter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[11]~2\,
	combout => \INST2|clk_divider:counter[12]~1_combout\,
	cout => \INST2|clk_divider:counter[12]~2\);

-- Location: FF_X7_Y3_N1
\INST2|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[12]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X7_Y3_N2
\INST2|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[13]~1_combout\ = (\INST2|clk_divider:counter[13]~q\ & (!\INST2|clk_divider:counter[12]~2\)) # (!\INST2|clk_divider:counter[13]~q\ & ((\INST2|clk_divider:counter[12]~2\) # (GND)))
-- \INST2|clk_divider:counter[13]~2\ = CARRY((!\INST2|clk_divider:counter[12]~2\) # (!\INST2|clk_divider:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[12]~2\,
	combout => \INST2|clk_divider:counter[13]~1_combout\,
	cout => \INST2|clk_divider:counter[13]~2\);

-- Location: FF_X7_Y3_N3
\INST2|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[13]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X7_Y3_N4
\INST2|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[14]~1_combout\ = (\INST2|clk_divider:counter[14]~q\ & (\INST2|clk_divider:counter[13]~2\ $ (GND))) # (!\INST2|clk_divider:counter[14]~q\ & (!\INST2|clk_divider:counter[13]~2\ & VCC))
-- \INST2|clk_divider:counter[14]~2\ = CARRY((\INST2|clk_divider:counter[14]~q\ & !\INST2|clk_divider:counter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[13]~2\,
	combout => \INST2|clk_divider:counter[14]~1_combout\,
	cout => \INST2|clk_divider:counter[14]~2\);

-- Location: FF_X7_Y3_N5
\INST2|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[14]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X7_Y3_N6
\INST2|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[15]~1_combout\ = (\INST2|clk_divider:counter[15]~q\ & (!\INST2|clk_divider:counter[14]~2\)) # (!\INST2|clk_divider:counter[15]~q\ & ((\INST2|clk_divider:counter[14]~2\) # (GND)))
-- \INST2|clk_divider:counter[15]~2\ = CARRY((!\INST2|clk_divider:counter[14]~2\) # (!\INST2|clk_divider:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[14]~2\,
	combout => \INST2|clk_divider:counter[15]~1_combout\,
	cout => \INST2|clk_divider:counter[15]~2\);

-- Location: FF_X7_Y3_N7
\INST2|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[15]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X7_Y3_N8
\INST2|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[16]~1_combout\ = (\INST2|clk_divider:counter[16]~q\ & (\INST2|clk_divider:counter[15]~2\ $ (GND))) # (!\INST2|clk_divider:counter[16]~q\ & (!\INST2|clk_divider:counter[15]~2\ & VCC))
-- \INST2|clk_divider:counter[16]~2\ = CARRY((\INST2|clk_divider:counter[16]~q\ & !\INST2|clk_divider:counter[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[15]~2\,
	combout => \INST2|clk_divider:counter[16]~1_combout\,
	cout => \INST2|clk_divider:counter[16]~2\);

-- Location: FF_X7_Y3_N9
\INST2|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[16]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X7_Y3_N10
\INST2|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[17]~1_combout\ = (\INST2|clk_divider:counter[17]~q\ & (!\INST2|clk_divider:counter[16]~2\)) # (!\INST2|clk_divider:counter[17]~q\ & ((\INST2|clk_divider:counter[16]~2\) # (GND)))
-- \INST2|clk_divider:counter[17]~2\ = CARRY((!\INST2|clk_divider:counter[16]~2\) # (!\INST2|clk_divider:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[16]~2\,
	combout => \INST2|clk_divider:counter[17]~1_combout\,
	cout => \INST2|clk_divider:counter[17]~2\);

-- Location: FF_X7_Y3_N11
\INST2|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[17]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X7_Y3_N12
\INST2|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[18]~1_combout\ = (\INST2|clk_divider:counter[18]~q\ & (\INST2|clk_divider:counter[17]~2\ $ (GND))) # (!\INST2|clk_divider:counter[18]~q\ & (!\INST2|clk_divider:counter[17]~2\ & VCC))
-- \INST2|clk_divider:counter[18]~2\ = CARRY((\INST2|clk_divider:counter[18]~q\ & !\INST2|clk_divider:counter[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[17]~2\,
	combout => \INST2|clk_divider:counter[18]~1_combout\,
	cout => \INST2|clk_divider:counter[18]~2\);

-- Location: FF_X7_Y3_N13
\INST2|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[18]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X7_Y3_N14
\INST2|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[19]~1_combout\ = (\INST2|clk_divider:counter[19]~q\ & (!\INST2|clk_divider:counter[18]~2\)) # (!\INST2|clk_divider:counter[19]~q\ & ((\INST2|clk_divider:counter[18]~2\) # (GND)))
-- \INST2|clk_divider:counter[19]~2\ = CARRY((!\INST2|clk_divider:counter[18]~2\) # (!\INST2|clk_divider:counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[18]~2\,
	combout => \INST2|clk_divider:counter[19]~1_combout\,
	cout => \INST2|clk_divider:counter[19]~2\);

-- Location: FF_X7_Y3_N15
\INST2|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[19]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X7_Y3_N16
\INST2|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[20]~1_combout\ = (\INST2|clk_divider:counter[20]~q\ & (\INST2|clk_divider:counter[19]~2\ $ (GND))) # (!\INST2|clk_divider:counter[20]~q\ & (!\INST2|clk_divider:counter[19]~2\ & VCC))
-- \INST2|clk_divider:counter[20]~2\ = CARRY((\INST2|clk_divider:counter[20]~q\ & !\INST2|clk_divider:counter[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[19]~2\,
	combout => \INST2|clk_divider:counter[20]~1_combout\,
	cout => \INST2|clk_divider:counter[20]~2\);

-- Location: FF_X7_Y3_N17
\INST2|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[20]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X7_Y3_N18
\INST2|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[21]~1_combout\ = (\INST2|clk_divider:counter[21]~q\ & (!\INST2|clk_divider:counter[20]~2\)) # (!\INST2|clk_divider:counter[21]~q\ & ((\INST2|clk_divider:counter[20]~2\) # (GND)))
-- \INST2|clk_divider:counter[21]~2\ = CARRY((!\INST2|clk_divider:counter[20]~2\) # (!\INST2|clk_divider:counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[20]~2\,
	combout => \INST2|clk_divider:counter[21]~1_combout\,
	cout => \INST2|clk_divider:counter[21]~2\);

-- Location: FF_X7_Y3_N19
\INST2|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[21]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X7_Y3_N20
\INST2|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[22]~1_combout\ = (\INST2|clk_divider:counter[22]~q\ & (\INST2|clk_divider:counter[21]~2\ $ (GND))) # (!\INST2|clk_divider:counter[22]~q\ & (!\INST2|clk_divider:counter[21]~2\ & VCC))
-- \INST2|clk_divider:counter[22]~2\ = CARRY((\INST2|clk_divider:counter[22]~q\ & !\INST2|clk_divider:counter[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[21]~2\,
	combout => \INST2|clk_divider:counter[22]~1_combout\,
	cout => \INST2|clk_divider:counter[22]~2\);

-- Location: FF_X7_Y3_N21
\INST2|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[22]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X7_Y3_N22
\INST2|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[23]~1_combout\ = (\INST2|clk_divider:counter[23]~q\ & (!\INST2|clk_divider:counter[22]~2\)) # (!\INST2|clk_divider:counter[23]~q\ & ((\INST2|clk_divider:counter[22]~2\) # (GND)))
-- \INST2|clk_divider:counter[23]~2\ = CARRY((!\INST2|clk_divider:counter[22]~2\) # (!\INST2|clk_divider:counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[23]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[22]~2\,
	combout => \INST2|clk_divider:counter[23]~1_combout\,
	cout => \INST2|clk_divider:counter[23]~2\);

-- Location: FF_X7_Y3_N23
\INST2|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[23]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[23]~q\);

-- Location: LCCOMB_X7_Y3_N24
\INST2|clk_divider:counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[24]~1_combout\ = \INST2|clk_divider:counter[23]~2\ $ (!\INST2|clk_divider:counter[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST2|clk_divider:counter[24]~q\,
	cin => \INST2|clk_divider:counter[23]~2\,
	combout => \INST2|clk_divider:counter[24]~1_combout\);

-- Location: FF_X7_Y3_N25
\INST2|clk_divider:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_divider:counter[24]~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[24]~q\);

-- Location: LCCOMB_X7_Y3_N28
\INST2|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_reg_extend~0_combout\ = (\pb_n[3]~input_o\ & \INST2|clk_divider:counter[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST2|clk_divider:counter[24]~q\,
	combout => \INST2|clk_reg_extend~0_combout\);

-- Location: LCCOMB_X10_Y3_N0
\INST2|clk_reg_extend[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_reg_extend[0]~feeder_combout\ = \INST2|clk_reg_extend~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2|clk_reg_extend~0_combout\,
	combout => \INST2|clk_reg_extend[0]~feeder_combout\);

-- Location: FF_X10_Y3_N1
\INST2|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_reg_extend[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_reg_extend\(0));

-- Location: LCCOMB_X10_Y4_N24
\INST2|clk_reg_extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_reg_extend~1_combout\ = (\pb_n[3]~input_o\ & \INST2|clk_reg_extend\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST2|clk_reg_extend\(0),
	combout => \INST2|clk_reg_extend~1_combout\);

-- Location: FF_X10_Y4_N25
\INST2|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|clk_reg_extend~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_reg_extend\(1));

-- Location: LCCOMB_X10_Y4_N30
\INST7|current_state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~37_combout\ = ((!\INST2|clk_reg_extend\(1) & \INST2|clk_reg_extend\(0))) # (!\pb_n[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|clk_reg_extend\(1),
	datac => \pb_n[3]~input_o\,
	datad => \INST2|clk_reg_extend\(0),
	combout => \INST7|current_state~37_combout\);

-- Location: FF_X9_Y4_N17
\INST7|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~46_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s15~q\);

-- Location: IOIBUF_X9_Y0_N22
\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

-- Location: LCCOMB_X9_Y4_N20
\INST4|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|sreg~1_combout\ = (\pb_n[3]~input_o\ & !\pb_n[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \pb_n[1]~input_o\,
	combout => \INST4|sreg~1_combout\);

-- Location: FF_X9_Y4_N21
\INST4|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST4|sreg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|sreg\(0));

-- Location: LCCOMB_X9_Y4_N0
\INST4|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|sreg~0_combout\ = (\pb_n[3]~input_o\ & \INST4|sreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST4|sreg\(0),
	combout => \INST4|sreg~0_combout\);

-- Location: FF_X9_Y4_N1
\INST4|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST4|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|sreg\(1));

-- Location: LCCOMB_X9_Y4_N28
\INST4|dout~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|dout~feeder_combout\ = \INST4|sreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST4|sreg\(1),
	combout => \INST4|dout~feeder_combout\);

-- Location: FF_X9_Y4_N29
\INST4|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST4|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|dout~q\);

-- Location: LCCOMB_X10_Y4_N4
\INST6|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg~0_combout\ = (!\INST7|current_state.s15~q\ & (!\INST7|current_state.s14~q\ & ((\INST4|dout~q\) # (\INST6|sreg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.s15~q\,
	datab => \INST4|dout~q\,
	datac => \INST6|sreg~q\,
	datad => \INST7|current_state.s14~q\,
	combout => \INST6|sreg~0_combout\);

-- Location: FF_X10_Y4_N5
\INST6|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST6|sreg~0_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg~q\);

-- Location: IOIBUF_X9_Y0_N1
\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

-- Location: LCCOMB_X9_Y4_N18
\INST3|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|sreg~1_combout\ = (\pb_n[3]~input_o\ & !\pb_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \pb_n[0]~input_o\,
	combout => \INST3|sreg~1_combout\);

-- Location: FF_X9_Y4_N19
\INST3|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|sreg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|sreg\(0));

-- Location: LCCOMB_X7_Y4_N2
\INST3|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|sreg~0_combout\ = (\pb_n[3]~input_o\ & \INST3|sreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST3|sreg\(0),
	combout => \INST3|sreg~0_combout\);

-- Location: FF_X7_Y4_N3
\INST3|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|sreg\(1));

-- Location: LCCOMB_X7_Y4_N0
\INST3|dout~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|dout~feeder_combout\ = \INST3|sreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3|sreg\(1),
	combout => \INST3|dout~feeder_combout\);

-- Location: FF_X7_Y4_N1
\INST3|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|dout~q\);

-- Location: LCCOMB_X7_Y4_N4
\INST5|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|sreg~0_combout\ = (!\INST7|current_state.S7~q\ & (!\INST7|current_state.S6~q\ & ((\INST3|dout~q\) # (\INST5|sreg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.S7~q\,
	datab => \INST3|dout~q\,
	datac => \INST5|sreg~q\,
	datad => \INST7|current_state.S6~q\,
	combout => \INST5|sreg~0_combout\);

-- Location: FF_X7_Y4_N5
\INST5|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|sreg~0_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|sreg~q\);

-- Location: LCCOMB_X9_Y4_N22
\INST7|current_state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~43_combout\ = (\pb_n[3]~input_o\ & !\INST7|current_state.s15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.s15~q\,
	combout => \INST7|current_state~43_combout\);

-- Location: FF_X9_Y4_N23
\INST7|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~43_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S0~q\);

-- Location: LCCOMB_X10_Y4_N14
\INST7|next_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|next_state.S1~0_combout\ = (!\INST7|current_state.S0~q\ & ((\INST5|sreg~q\) # (!\INST6|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|sreg~q\,
	datac => \INST5|sreg~q\,
	datad => \INST7|current_state.S0~q\,
	combout => \INST7|next_state.S1~0_combout\);

-- Location: FF_X10_Y4_N15
\INST7|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|next_state.S1~0_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S1~q\);

-- Location: LCCOMB_X10_Y4_N12
\INST7|next_state.S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|next_state.S2~0_combout\ = (\INST7|current_state.S1~q\ & ((\INST5|sreg~q\) # (!\INST6|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|sreg~q\,
	datac => \INST7|current_state.S1~q\,
	datad => \INST5|sreg~q\,
	combout => \INST7|next_state.S2~0_combout\);

-- Location: FF_X10_Y4_N13
\INST7|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|next_state.S2~0_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S2~q\);

-- Location: LCCOMB_X10_Y4_N10
\INST7|current_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~36_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.S2~q\,
	combout => \INST7|current_state~36_combout\);

-- Location: FF_X10_Y4_N11
\INST7|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~36_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S3~q\);

-- Location: LCCOMB_X10_Y4_N20
\INST7|current_state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~38_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.S3~q\,
	combout => \INST7|current_state~38_combout\);

-- Location: FF_X10_Y4_N21
\INST7|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~38_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S4~q\);

-- Location: LCCOMB_X10_Y4_N6
\INST7|current_state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~39_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.S4~q\,
	combout => \INST7|current_state~39_combout\);

-- Location: FF_X10_Y4_N7
\INST7|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~39_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S5~q\);

-- Location: LCCOMB_X11_Y4_N18
\INST7|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|Selector0~0_combout\ = (\INST7|current_state.S0~q\ & !\INST7|current_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7|current_state.S0~q\,
	datad => \INST7|current_state.S1~q\,
	combout => \INST7|Selector0~0_combout\);

-- Location: LCCOMB_X10_Y4_N2
\INST7|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|Selector0~1_combout\ = (\INST7|current_state.S5~q\) # ((\INST6|sreg~q\ & (!\INST5|sreg~q\ & !\INST7|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.S5~q\,
	datab => \INST6|sreg~q\,
	datac => \INST5|sreg~q\,
	datad => \INST7|Selector0~0_combout\,
	combout => \INST7|Selector0~1_combout\);

-- Location: FF_X10_Y4_N3
\INST7|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|Selector0~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S6~q\);

-- Location: LCCOMB_X10_Y4_N16
\INST7|current_state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~45_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.S6~q\,
	combout => \INST7|current_state~45_combout\);

-- Location: FF_X10_Y4_N17
\INST7|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~45_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.S7~q\);

-- Location: LCCOMB_X10_Y4_N28
\INST7|current_state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~44_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.S7~q\,
	combout => \INST7|current_state~44_combout\);

-- Location: FF_X10_Y4_N29
\INST7|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~44_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s8~q\);

-- Location: LCCOMB_X10_Y4_N8
\INST7|next_state.s9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|next_state.s9~0_combout\ = (\INST7|current_state.s8~q\ & ((\INST6|sreg~q\) # (!\INST5|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|current_state.s8~q\,
	datac => \INST6|sreg~q\,
	datad => \INST5|sreg~q\,
	combout => \INST7|next_state.s9~0_combout\);

-- Location: FF_X10_Y4_N9
\INST7|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|next_state.s9~0_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s9~q\);

-- Location: LCCOMB_X10_Y4_N22
\INST7|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|Selector1~0_combout\ = (!\INST7|current_state.s9~q\ & !\INST7|current_state.s8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7|current_state.s9~q\,
	datad => \INST7|current_state.s8~q\,
	combout => \INST7|Selector1~0_combout\);

-- Location: LCCOMB_X10_Y4_N26
\INST7|next_state.s10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|next_state.s10~0_combout\ = (\INST7|current_state.s9~q\ & ((\INST6|sreg~q\) # (!\INST5|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|current_state.s9~q\,
	datac => \INST6|sreg~q\,
	datad => \INST5|sreg~q\,
	combout => \INST7|next_state.s10~0_combout\);

-- Location: FF_X10_Y4_N27
\INST7|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|next_state.s10~0_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s10~q\);

-- Location: LCCOMB_X9_Y4_N12
\INST7|current_state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~40_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.s10~q\,
	combout => \INST7|current_state~40_combout\);

-- Location: FF_X9_Y4_N13
\INST7|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~40_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s11~q\);

-- Location: LCCOMB_X9_Y4_N2
\INST7|current_state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~41_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.s11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.s11~q\,
	combout => \INST7|current_state~41_combout\);

-- Location: FF_X9_Y4_N3
\INST7|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~41_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s12~q\);

-- Location: LCCOMB_X9_Y4_N24
\INST7|current_state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|current_state~42_combout\ = (\pb_n[3]~input_o\ & \INST7|current_state.s12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST7|current_state.s12~q\,
	combout => \INST7|current_state~42_combout\);

-- Location: FF_X9_Y4_N25
\INST7|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|current_state~42_combout\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s13~q\);

-- Location: LCCOMB_X10_Y4_N0
\INST7|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|Selector1~1_combout\ = (\INST7|current_state.s13~q\) # ((!\INST7|Selector1~0_combout\ & (!\INST6|sreg~q\ & \INST5|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|Selector1~0_combout\,
	datab => \INST7|current_state.s13~q\,
	datac => \INST6|sreg~q\,
	datad => \INST5|sreg~q\,
	combout => \INST7|Selector1~1_combout\);

-- Location: FF_X10_Y4_N1
\INST7|current_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|Selector1~1_combout\,
	sclr => \ALT_INV_pb_n[3]~input_o\,
	ena => \INST7|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.s14~q\);

-- Location: LCCOMB_X7_Y4_N6
\INST7|WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr2~1_combout\ = (!\INST7|current_state.S7~q\ & !\INST7|current_state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7|current_state.S7~q\,
	datad => \INST7|current_state.S6~q\,
	combout => \INST7|WideOr2~1_combout\);

-- Location: LCCOMB_X9_Y4_N10
\inst8|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|DOUT_TEMP[6]~0_combout\ = (\inst8|clk_proc:COUNT[10]~q\ & (((!\INST7|WideOr2~1_combout\)))) # (!\inst8|clk_proc:COUNT[10]~q\ & ((\INST7|current_state.s14~q\) # ((\INST7|current_state.s15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clk_proc:COUNT[10]~q\,
	datab => \INST7|current_state.s14~q\,
	datac => \INST7|WideOr2~1_combout\,
	datad => \INST7|current_state.s15~q\,
	combout => \inst8|DOUT_TEMP[6]~0_combout\);

-- Location: LCCOMB_X11_Y4_N20
\INST7|WideOr4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr4~combout\ = (\INST7|current_state.S2~q\) # ((\INST7|current_state.S4~q\) # ((\INST7|current_state.S5~q\) # (\INST7|current_state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.S2~q\,
	datab => \INST7|current_state.S4~q\,
	datac => \INST7|current_state.S5~q\,
	datad => \INST7|current_state.S3~q\,
	combout => \INST7|WideOr4~combout\);

-- Location: LCCOMB_X9_Y4_N14
\INST7|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr9~combout\ = (\INST7|current_state.s11~q\) # ((\INST7|current_state.s13~q\) # ((\INST7|current_state.s12~q\) # (\INST7|current_state.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.s11~q\,
	datab => \INST7|current_state.s13~q\,
	datac => \INST7|current_state.s12~q\,
	datad => \INST7|current_state.s10~q\,
	combout => \INST7|WideOr9~combout\);

-- Location: LCCOMB_X9_Y4_N8
\INST7|WideOr11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr11~0_combout\ = (!\INST7|current_state.S4~q\ & (!\INST7|current_state.s12~q\ & (\INST7|current_state.S0~q\ & !\INST7|current_state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.S4~q\,
	datab => \INST7|current_state.s12~q\,
	datac => \INST7|current_state.S0~q\,
	datad => \INST7|current_state.s8~q\,
	combout => \INST7|WideOr11~0_combout\);

-- Location: LCCOMB_X9_Y4_N4
\INST7|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr12~0_combout\ = (\INST7|current_state.S2~q\) # ((\INST7|current_state.s10~q\) # ((\INST7|current_state.s14~q\) # (\INST7|current_state.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.S2~q\,
	datab => \INST7|current_state.s10~q\,
	datac => \INST7|current_state.s14~q\,
	datad => \INST7|current_state.S6~q\,
	combout => \INST7|WideOr12~0_combout\);

-- Location: LCCOMB_X9_Y8_N28
\INST7|WideOr12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr12~combout\ = (\INST7|WideOr12~0_combout\) # (!\INST7|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7|WideOr11~0_combout\,
	datad => \INST7|WideOr12~0_combout\,
	combout => \INST7|WideOr12~combout\);

-- Location: LCCOMB_X10_Y4_N18
\INST7|WideOr11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr11~1_combout\ = (\INST7|current_state.S5~q\) # ((\INST7|current_state.s9~q\) # ((\INST7|current_state.S1~q\) # (\INST7|current_state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.S5~q\,
	datab => \INST7|current_state.s9~q\,
	datac => \INST7|current_state.S1~q\,
	datad => \INST7|current_state.s13~q\,
	combout => \INST7|WideOr11~1_combout\);

-- Location: LCCOMB_X9_Y8_N30
\INST7|WideOr11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr11~combout\ = (\INST7|WideOr11~1_combout\) # (!\INST7|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7|WideOr11~0_combout\,
	datad => \INST7|WideOr11~1_combout\,
	combout => \INST7|WideOr11~combout\);

-- Location: LCCOMB_X9_Y4_N6
\inst8|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|DOUT[0]~0_combout\ = (!\INST7|current_state.s11~q\ & (!\INST7|current_state.s10~q\ & (!\INST7|current_state.s9~q\ & !\INST7|current_state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.s11~q\,
	datab => \INST7|current_state.s10~q\,
	datac => \INST7|current_state.s9~q\,
	datad => \INST7|current_state.s8~q\,
	combout => \inst8|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y4_N10
\INST7|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr2~0_combout\ = (!\INST7|current_state.S3~q\ & (!\INST7|current_state.S2~q\ & (\INST7|current_state.S0~q\ & !\INST7|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.S3~q\,
	datab => \INST7|current_state.S2~q\,
	datac => \INST7|current_state.S0~q\,
	datad => \INST7|current_state.S1~q\,
	combout => \INST7|WideOr2~0_combout\);

-- Location: LCCOMB_X11_Y4_N28
\INST7|WideOr10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr10~combout\ = (!\INST7|WideOr2~0_combout\) # (!\inst8|DOUT[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|DOUT[0]~0_combout\,
	datad => \INST7|WideOr2~0_combout\,
	combout => \INST7|WideOr10~combout\);

-- Location: LCCOMB_X11_Y4_N26
\INST7|WideOr2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|WideOr2~combout\ = (\INST7|WideOr2~1_combout\ & (!\INST7|current_state.S4~q\ & (!\INST7|current_state.S5~q\ & \INST7|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|WideOr2~1_combout\,
	datab => \INST7|current_state.S4~q\,
	datac => \INST7|current_state.S5~q\,
	datad => \INST7|WideOr2~0_combout\,
	combout => \INST7|WideOr2~combout\);

-- Location: LCCOMB_X9_Y4_N26
\inst8|DOUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|DOUT[0]~1_combout\ = (!\INST7|current_state.s12~q\ & (!\INST7|current_state.s15~q\ & (!\INST7|current_state.s14~q\ & !\INST7|current_state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.s12~q\,
	datab => \INST7|current_state.s15~q\,
	datac => \INST7|current_state.s14~q\,
	datad => \INST7|current_state.s13~q\,
	combout => \inst8|DOUT[0]~1_combout\);

-- Location: LCCOMB_X11_Y4_N16
\inst8|DOUT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|DOUT[0]~2_combout\ = (\inst8|clk_proc:COUNT[10]~q\ & (\INST7|WideOr2~combout\)) # (!\inst8|clk_proc:COUNT[10]~q\ & (((\inst8|DOUT[0]~0_combout\ & \inst8|DOUT[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|WideOr2~combout\,
	datab => \inst8|DOUT[0]~0_combout\,
	datac => \inst8|clk_proc:COUNT[10]~q\,
	datad => \inst8|DOUT[0]~1_combout\,
	combout => \inst8|DOUT[0]~2_combout\);

-- Location: LCCOMB_X7_Y3_N30
\INST2|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|blink_sig~0_combout\ = (\pb_n[3]~input_o\ & \INST2|clk_divider:counter[22]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	datad => \INST2|clk_divider:counter[22]~q\,
	combout => \INST2|blink_sig~0_combout\);

-- Location: FF_X7_Y3_N31
\INST2|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|blink_sig~q\);

-- Location: LCCOMB_X11_Y4_N0
\inst8|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|DOUT[3]~3_combout\ = (\INST2|blink_sig~q\ & ((\inst8|clk_proc:COUNT[10]~q\ & ((!\INST7|Selector0~0_combout\))) # (!\inst8|clk_proc:COUNT[10]~q\ & (!\INST7|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|blink_sig~q\,
	datab => \INST7|Selector1~0_combout\,
	datac => \inst8|clk_proc:COUNT[10]~q\,
	datad => \INST7|Selector0~0_combout\,
	combout => \inst8|DOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y4_N30
\inst8|DOUT[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|DOUT[3]~4_combout\ = (\inst8|DOUT[3]~3_combout\) # ((\inst8|clk_proc:COUNT[10]~q\ & ((\INST7|WideOr4~combout\))) # (!\inst8|clk_proc:COUNT[10]~q\ & (\INST7|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|WideOr9~combout\,
	datab => \inst8|DOUT[3]~3_combout\,
	datac => \inst8|clk_proc:COUNT[10]~q\,
	datad => \INST7|WideOr4~combout\,
	combout => \inst8|DOUT[3]~4_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


