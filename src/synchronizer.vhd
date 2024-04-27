<<<<<<< HEAD
-- Written by: Haibo Sun
library ieee;
use ieee.std_logic_1164.all;


entity synchronizer is port (

			clk					: in std_logic;          -- The global clock signal for synchronizer component 
			reset				: in std_logic;          -- The reset signal for synchronizer component 
			din					: in std_logic;          -- The input signal by push button for synchronizer component 
			dout				: out std_logic          -- The output signal for synchronizer component 
  );
 end synchronizer;
 
 
architecture circuit of synchronizer is

	Signal sreg				: std_logic_vector(1 downto 0);      -- Used to store the signals generates by the synchronizer 

BEGIN

process(clk) begin

	if(rising_edge(clk)) then 
		if(reset = '1') then                      --If reset equals to 1, set the signal to 00
			sreg <= "00";
		else
			sreg(1) <= sreg(0);                    -- Else we shift the signals 
			sreg(0) <= din;
		end if;
	end if;
	dout <= sreg(1);                          -- The output of the synchronizer 

end process;





=======
-- Lab Section: 205
-- Group Number: 9
-- Group Member: Kevin Li, Haibo Sun
library ieee;
use ieee.std_logic_1164.all;


entity synchronizer is port (

			clk					: in std_logic;          -- The global clock signal for synchronizer component 
			reset					: in std_logic;          -- The reset signal for synchronizer component 
			din					: in std_logic;          -- The input signal by push button for synchronizer component 
			dout					: out std_logic          -- The output signal for synchronizer component 
  );
 end synchronizer;
 
 
architecture circuit of synchronizer is

	Signal sreg				: std_logic_vector(1 downto 0);      -- Used to store the signals generates by the synchronizer 

BEGIN

process(clk) begin

	if(rising_edge(clk)) then 
		if(reset = '1') then                      --If reset equals to 1, set the signal to 00
			sreg <= "00";
		else
			sreg(1) <= sreg(0);                    -- Else we shift the signals 
			sreg(0) <= din;
		end if;
	end if;
	dout <= sreg(1);                          -- The output of the synchronizer 

end process;





>>>>>>> f152ec88ed0e01c9b6e0f2c1f89c86f3dee37448
end;