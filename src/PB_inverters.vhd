-- Written by: Haibo Sun
library ieee;
use ieee.std_logic_1164.all;


entity PB_inverters is port (
 	pb_n	: in  std_logic_vector (3 downto 0);      -- The original push botton signals (goes from 3 to 0)
	pb		: out	std_logic_vector(3 downto 0)				-- The inverted push botton signals (goes from 3 to 0)			 
	); 
end PB_inverters;

architecture ckt of PB_inverters is

begin
pb <= NOT(pb_n);    -- To invert signals 


end ckt;