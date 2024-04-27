<<<<<<< HEAD
-- Written by: Haibo Sun
library ieee;
use ieee.std_logic_1164.all;


entity holding_register is port (

			clk					: in std_logic;               -- The global clock signal 
			reset					: in std_logic;               -- The reset signal 
			register_clr			: in std_logic;            -- The register_clear signal to clear the crossing requests that generates by the output of state machine 
			din					: in std_logic;               -- The input generates by the synchronizers
			dout					: out std_logic               -- The pedestrains crossing requests 
  );
 end holding_register;
 
 architecture circuit of holding_register is

	Signal sreg				: std_logic;                    -- Used to store the signal from the holding_register 


BEGIN

process(clk) begin
	if(rising_edge(clk)) then 
		if(reset = '1') then                              -- If the reset is equal to 1, reset the signal to 0
			sreg <= '0'; 
		else 
			sreg <= (din or sreg) and not(register_clr);   -- Otherwise hold the previous signal steady if register_clr hold the value of 0 		
		end if;
	end if;
	dout <= sreg;                                        -- The output of the hold_register 

end process;

=======
-- Lab Section: 205
-- Group Number: 9
-- Group Member: Kevin Li, Haibo Sun
library ieee;
use ieee.std_logic_1164.all;


entity holding_register is port (

			clk					: in std_logic;               -- The global clock signal 
			reset					: in std_logic;               -- The reset signal 
			register_clr			: in std_logic;            -- The register_clear signal to clear the crossing requests that generates by the output of state machine 
			din					: in std_logic;               -- The input generates by the synchronizers
			dout					: out std_logic               -- The pedestrains crossing requests 
  );
 end holding_register;
 
 architecture circuit of holding_register is

	Signal sreg				: std_logic;                    -- Used to store the signal from the holding_register 


BEGIN

process(clk) begin
	if(rising_edge(clk)) then 
		if(reset = '1') then                              -- If the reset is equal to 1, reset the signal to 0
			sreg <= '0'; 
		else 
			sreg <= (din or sreg) and not(register_clr);   -- Otherwise hold the previous signal steady if register_clr hold the value of 0 		
		end if;
	end if;
	dout <= sreg;                                        -- The output of the hold_register 

end process;

>>>>>>> f152ec88ed0e01c9b6e0f2c1f89c86f3dee37448
end;