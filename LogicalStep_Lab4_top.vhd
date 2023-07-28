-- Lab Section: 205
-- Group Number: 9
-- Group Member: Kevin Li, Haibo Sun
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   clkin_50		: in	std_logic;							-- The 50 MHz FPGA Clockinput
	rst_n			: in	std_logic;							-- The RESET input (ACTIVE LOW)
	pb_n			: in	std_logic_vector(3 downto 0); -- The push-button inputs (ACTIVE LOW)
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the the lab4 project details
	-------------------------------------------------------------
	-- you can add temporary output ports here if you need to debug your design 
	-- or to add internal signals for your simulations
	-------------------------------------------------------------
	seg_NS_a		: out std_logic;
	seg_NS_d		: out std_logic;
	seg_NS_g		: out std_logic;
	
	seg_EW_a		: out std_logic;
	seg_EW_d		: out std_logic;
	seg_EW_g		: out std_logic;
	
	sm_clk_enable  		:out std_logic; 
	blink_signal			:out std_logic; 
	
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab4_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS

   component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	--bits 6 to 0 represent segments G,F,E,D,C,B,A
			 DIN1 		: in  std_logic_vector(6 downto 0); --bits 6 to 0 represent segments G,F,E,D,C,B,A
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
   );
   end component;

   component clock_generator port (
			sim_mode			: in boolean;       -- Simulation mode on Logicstep Board for downloads(implemented to choose the correct clock frequency for the output signals, which are "sm_clken" and "blink") 
			reset				: in std_logic;     -- The reset signal 
         clkin      		: in  std_logic;    -- The input that used for counter and the register clocking 
			sm_clken			: out	std_logic;    -- The output that used for enable the sm into advance by a number of 1 clk 
			blink		  		: out std_logic     -- The output that used for blink signals (set it to be a quarter of the sm_clken) 
  );
   end component;

   component pb_inverters port (
			 pb_n					: in std_logic_vector(3 downto 0);    -- The original push botton signals (goes from 3 to 0)
			 pb			  		: out std_logic_vector(3 downto 0)    -- The inverted push botton signals (goes from 3 to 0) 
  );
   end component;

	
	component synchronizer port(
			clk					: in std_logic;    -- The global clock signal for synchronizer component  
			reset					: in std_logic;    -- The reset signal for synchronizer component 
			din					: in std_logic;    -- The input signal by push button for synchronizer component  
			dout					: out std_logic    -- The output signal for synchronizer component 
  );
   end component;
 
  component holding_register port (
			clk					: in std_logic;      -- The global clock signal for holding_register component 
			reset					: in std_logic;      -- The reset signal for holding_register component 
			register_clr			: in std_logic;   -- The clear signal (used to clear the cross requests) for the holding_register component, this signal is the general output of the state machine 
			din					: in std_logic;      -- The input for holding_register component(it's the dout signal from the synchronizer component) 
			dout					: out std_logic      -- The pedestrian crossing requests for holding_register component
  );
  end component;
  
  component ccp_state_machine port(
	 clk_input, reset, sm_clken, blink_sig			: in std_logic;                         -- Input signals includes: the clock input signal, the reset input, the flashing green light input
	 NS_Command, EW_Command								: in std_logic;                         -- Input for cross requests (NS_Command for North-South cross request, EW_Command for East-West cross request) 
	 NS_A, NS_G, NS_D, EW_A, EW_G, EW_D				: out std_logic;                        -- The output for traffic light state outputs (displayed in the seven-segment display) 
	 NS_cross, EW_cross, NS_clr, EW_clr				: out std_logic;                        -- The crossing displays(for both NS and EW) and cross request clear signals (for both NS and EW) 
	 display													: out std_logic_vector(3 downto 0)      -- The led outputs to show the current state number 
 );
END component;
				
	
----------------------------------------------------------------------------------------------------
	CONSTANT	sim_mode						: boolean := TRUE; -- set to FALSE for LogicalStep board downloads
	                                                     -- set to TRUE for SIMULATIONS
	
	SIGNAL sm_clken, blink_sig			: std_logic; 
	
	SIGNAL pb								: std_logic_vector(3 downto 0); -- pb(3) is used as an active-high reset for all registers
	
	signal NS								: std_logic;                -- Signals that used to store the outputs generates by the synchronizer for NS direction 
	signal EW								: std_logic;                -- Signals that used to store the outputs generates by the synchronizer for EW direction
	
	signal NS_Command, EW_Command								: std_logic;                         -- Signals to control the display of seven segments on the logicalStepboard (for both NS and EW direstion) 
	signal NS_A, NS_G, NS_D, EW_A, EW_G, EW_D				: std_logic;                         -- Signals to store traffic light states in both NS and EW direction (A for Red light, G for Yellow light and D for Green light) 
	signal NS_cross, EW_cross, NS_clr, EW_clr				: std_logic;                         -- Signals to store the cross requests and the clear signals output for both the NS and EW direction 
	signal display													: std_logic_vector(3 downto 0);      -- The current state number geneates by the state machine 

	signal seven_seg_NS											: std_logic_vector(6 downto 0);      -- signals to control the seven segment display on the logicstepboard for NS direction 
	signal seven_seg_EW											: std_logic_vector(6 downto 0);      -- signals to control the seven segment display on the logicstepboard for NS direction

	
	
BEGIN
----------------------------------------------------------------------------------------------------

-- Signal used for simulation purposes 
	seg_NS_a <= NS_A;
	seg_NS_d <= NS_D;
	seg_NS_g <= NS_G;

	seg_EW_a	<= EW_A;
	seg_EW_d	<= EW_D;
	seg_EW_g	<= EW_G;
	
	sm_clk_enable <= sm_clken;
	blink_signal <= blink_sig;
	

	
-- signals after concatenation to receive data for the seven segement displays for the logicstepboard 
seven_seg_NS <= NS_G & "00" & NS_D & "00" & NS_A;
seven_seg_EW <= EW_G & "00" & EW_D & "00" & EW_A;


INST1: pb_inverters		port map (pb_n, pb);             -- instance for a pb_inverter 
INST2: clock_generator 	port map (sim_mode, pb(3), clkin_50, sm_clken, blink_sig);   -- instance for a clock_generator 
INST3: synchronizer		port map (clkin_50, pb(3), pb(0), NS);    -- instance for a synchronizer in the NS direction 
INST4: synchronizer		port map (clkin_50, pb(3), pb(1), EW);    -- instance for a synchronizer in the EW direction 
INST5: holding_register port map (clkin_50, pb(3), pb(2), NS, NS_Command);     -- instance for a holding_register in the NS direction 
INST6: holding_register port map (clkin_50, pb(3), pb(2), EW, EW_Command);     -- instance for a holding_register in the EW direction 
--INST7: ccp_state_machine port map (clkin_50, pb(3), sm_clken, blink_sig, NS_Command, EW_Command, NS_A, NS_G, NS_D, EW_A, EW_G, EW_D, NS_cross, EW_cross, NS_clr, EW_clr, display);   -- instance of a state machine (used a moore machine, incorporates transition, decoder and register logic)
--inst8: segment7_mux port map (clkin_50, seven_seg_NS, seven_seg_EW, seg7_data, seg7_char2, seg7_char1);

leds(7 downto 4) <= display;
leds(0) <= NS_cross;
leds(1) <= NS_Command;
leds(2) <= EW_cross;
leds(3) <= EW_Command;


END SimpleCircuit;
