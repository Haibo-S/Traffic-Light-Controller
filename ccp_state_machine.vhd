-- Lab Section: 205
-- Group Number: 9
-- Group Member: Kevin Li, Haibo Sun
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ccp_state_machine IS Port
(  
 clk_input, reset, sm_clken, blink_sig			: IN std_logic;                       -- Input signals includes: the clock input signal, the reset input, the flashing green light input
 NS_Command, EW_Command								: IN std_logic;                       -- Input for cross requests (NS_Command for North-South cross request, EW_Command for East-West cross request)  
 NS_A, NS_G, NS_D, EW_A, EW_G, EW_D				: out std_logic;                      -- The output for traffic light state outputs (displayed in the seven-segment display) 
 NS_cross, EW_cross, NS_clr, EW_clr				: out std_logic;                      -- The crossing displays(for both NS and EW) and cross request clear signals (for both NS and EW) 
 display													: out std_logic_vector(3 downto 0)    -- The led outputs to show the current state number
 );
END ENTITY;
 

 Architecture SM of ccp_state_machine is
 
 
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, s8, s9, s10, s11, s12, s13, s14, s15, s16);   -- list all the STATE_NAMES values, 16 values in total 

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES, store current and next_state 

 
BEGIN

  --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS EXAMPLE
 
Register_Section: PROCESS (clk_input)  -- this process updates with a clock
BEGIN
	IF(rising_edge(clk_input)) THEN
		IF (reset = '1') THEN              -- If reset equals to 1, reset current_state back to 50
			current_state <= S0;
		ELSIF (reset = '0' and sm_clken = '1') THEN   -- Push to next state if reset equals to 0  and sm_clken equals to 1
			current_state <= next_State;
		END IF;
		
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS EXAMPLE

Transition_Section: PROCESS (current_state, EW_Command, NS_Command)     -- This process update with cross requests and current states for both EW and NS direction

BEGIN
  CASE current_state IS
        WHEN S0 =>	                                          -- The current state is 50 	
				IF(EW_Command ='1' and NS_Command = '0') then      -- The next state is push to s6 if someone is trying to cross in the EW direction and no one is crossing in the NS direction 
					next_state <= s6;
				else
					next_state <= s1;                               -- Otherwise we set the current state into s1 
				END IF;
         WHEN S1 =>		                                       -- When current state is s1 
				IF(EW_Command ='1' and NS_Command = '0') then      -- The next state is push to s6 if someone is trying to cross in the EW direction and no one is crossing in the NS direction 
					next_state <= s6;
				else
					next_state <= s2;                               -- Otherwise we set the current state into s2 
				END IF;
         WHEN S2 =>		                                       -- When current state is s2
				next_state <= s3;                                  -- State change goes from s2 to s3 
         WHEN S3 =>		                                       -- When current state is s3
				next_state <= s4;                                  -- State change goes from s3 to s4 
         WHEN S4 =>		                                       -- When current state is s4
				next_state <= S5;                                  -- State change goes from s4 to s5
         WHEN S5 =>		                                       -- When current state is s5
				next_state <= S6;                                  -- State change goes from s5 to s6
         WHEN S6 =>		                                       -- When current state is s6
				next_state <= S7;                                  -- State change goes from s6 to s7
			WHEN S7 =>		                                       -- When current state is s7
				next_state <= S8;                                  -- State change goes from s7 to s8
         WHEN S8 =>		                                       -- The current state is s8
				IF(NS_Command ='1' and EW_Command ='0') THEN       -- The next state is pushed to s14 if someone is trying to cross in the NS direction and no one is crossing in the EW direction 
					next_state <= S14;                              
				ELSE
					next_state <= S9;                               -- Otherwise we set the current state into s9
				END IF;      
			WHEN S9 =>		                                       -- The current state is s9
				IF(NS_Command ='1' and EW_Command ='0') THEN       -- The next state is pushed to s14 if someone is trying to cross in the NS direction and no one is crossing in the EW direction 
					next_state <= S14;
				ELSE
					next_state <= S10;                              -- Otherwise we set the current state to s10
				END IF;
			WHEN S10 =>		                                       -- When current state is s10
				next_state <= S11;                                 -- State change goes from s10 to s11 
			WHEN S11 =>		                                       -- When current state is s11
				next_state <= S12;                                 -- State change goes from s11 to s12 
			WHEN S12 =>		                                       -- When current state is s12
				next_state <= S13;                                 -- State change goes from s12 to s13
			WHEN S13 =>		                                       -- When current state is s13
				next_state <= S14;                                 -- State change goes from s13 to s14
			WHEN S14 =>		                                       -- When current state is s14
				next_state <= S15;                                 -- State change goes from s14 to s15
			WHEN S15 =>		                                       -- When current state is s15
				next_state <= S0;                                  -- State change goes from s15 to s0
			WHEN OTHERS =>
              next_state <= S0;                                -- Otherwise we set the next_state to s0
				
	  END CASE;
 END PROCESS;
 

-- DECODER SECTION PROCESS EXAMPLE (MOORE FORM SHOWN)

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
	  
         WHEN S0 =>															-- When current state is zero, 
			NS_A <= '0';														-- north south traffic light's red light is off
			NS_G <= '0';														-- north south traffic light's yellow light is off
			NS_D <= blink_sig;												-- north south traffic light's red light is blinking
			
			EW_A <= '1';														-- east west traffic light's red light is on
			EW_G <= '0';														-- east west traffic light's yellow light is off
			EW_D <= '0';														-- east west traffic light's green light is off
			
			NS_cross <= '0';													-- north south direction pedestrian can not cross the road
			EW_cross <= '0';													-- east west directoon pedestrian can not cross the road
			
			display <= "0000";												-- current state is 0
			
			NS_clr <= '0';														-- north south clear is off
			EW_clr <= '0';														-- east west clear is off
																					-- same anaology applies to other states
         WHEN S1 =>		
			NS_A <= '0';
			NS_G <= '0';
			NS_D <= blink_sig;
			
			EW_A <= '1';
			EW_G <= '0';
			EW_D <= '0';
			
			NS_cross <= '0';
			EW_cross <= '0';
			
			display <= "0001";
			
			NS_clr <= '0';
			EW_clr <= '0';

         WHEN S2 =>		
			NS_A <= '0';
			NS_G <= '0';
			NS_D <= '1';
			
			EW_A <= '1';
			EW_G <= '0';
			EW_D <= '0';
			
			NS_cross <= '1';
			EW_cross <= '0';
			
			display <= "0010";
			
			NS_clr <= '0';
			EW_clr <= '0';
			
         WHEN S3 =>		
			NS_A <= '0';
			NS_G <= '0';
			NS_D <= '1';
			
			EW_A <= '1';
			EW_G <= '0';
			EW_D <= '0';
			
			NS_cross <= '1';
			EW_cross <= '0';
			
			display <= "0011";
			
			NS_clr <= '0';
			EW_clr <= '0';

         WHEN S4 =>		
			NS_A <= '0';
			NS_G <= '0';
			NS_D <= '1';
			
			EW_A <= '1';
			EW_G <= '0';
			EW_D <= '0';
			
			NS_cross <= '1';
			EW_cross <= '0';
			
			display <= "0100";
			
			NS_clr <= '0';
			EW_clr <= '0';

         WHEN S5 =>		
			NS_A <= '0';
			NS_G <= '0';
			NS_D <= '1';
			
			EW_A <= '1';
			EW_G <= '0';
			EW_D <= '0';
			
			NS_cross <= '1';
			EW_cross <= '0';
			
			display <= "0101";
			
			NS_clr <= '0';
			EW_clr <= '0';
				
         WHEN S6 =>		
			NS_A <= '0';
			NS_G <= '1';
			NS_D <= '0';
			
			EW_A <= '1';
			EW_G <= '0';
			EW_D <= '0';
			
			NS_cross <= '0';
			EW_cross <= '0';
			
			display <= "0110";
			
			NS_clr <= '1';
			EW_clr <= '0';
				
         WHEN S7 =>		
			NS_A <= '0';
			NS_G <= '1';
			NS_D <= '0';
			
			EW_A <= '1';
			EW_G <= '0';
			EW_D <= '0';
			
			NS_cross <= '0';
			EW_cross <= '0';
			
			display <= "0111";
			
			NS_clr <= '1';
			EW_clr <= '0';
				
         WHEN S8 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '0';
			EW_D <= blink_sig;
			
			NS_cross <= '0';
			EW_cross <= '0';
			
			display <= "1000";
			
			NS_clr <= '0';
			EW_clr <= '0';
			
			WHEN S9 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '0';
			EW_D <= blink_sig;
			
			NS_cross <= '0';
			EW_cross <= '0';
			
			display <= "1001";
			
			NS_clr <= '0';
			EW_clr <= '0';
			
			WHEN S10 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '0';
			EW_D <= '1';
			
			NS_cross <= '0';
			EW_cross <= '1';
			
			display <= "1010";
			
			NS_clr <= '0';
			EW_clr <= '0';
			
			WHEN S11 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '0';
			EW_D <= '1';
			
			NS_cross <= '0';
			EW_cross <= '1';
			
			display <= "1011";
			
			NS_clr <= '0';
			EW_clr <= '0';
			
			WHEN S12 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '0';
			EW_D <= '1';
			
			NS_cross <= '0';
			EW_cross <= '1';
			
			display <= "1100";
			
			NS_clr <= '0';
			EW_clr <= '0';
			
			WHEN S13 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '0';
			EW_D <= '1';
			
			NS_cross <= '0';
			EW_cross <= '1';
			
			display <= "1101";
			
			NS_clr <= '0';
			EW_clr <= '0';
			
			WHEN S14 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '1';
			EW_D <= '0';
			
			NS_cross <= '0';
			EW_cross <= '0';
			
			display <= "1110";
			
			NS_clr <= '0';
			EW_clr <= '1';
			
			WHEN S15 =>		
			NS_A <= '1';
			NS_G <= '0';
			NS_D <= '0';
			
			EW_A <= '0';
			EW_G <= '1';
			EW_D <= '0';
			
			NS_cross <= '0';
			EW_cross <= '0';
			
			display <= "1111";
			
			NS_clr <= '0';
			EW_clr <= '1';
			
			WHEN OTHERS =>
			NS_A <= '1';
			NS_G <= '1';
			NS_D <= '1';
			
			EW_A <= '1';
			EW_G <= '1';
			EW_D <= '1';
			
			NS_cross <= '1';
			EW_cross <= '1';
			
			display <= "1111";
			
			NS_clr <= '1';
			EW_clr <= '1';
			
			
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
