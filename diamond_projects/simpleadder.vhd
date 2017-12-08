library ieee;
use ieee.std_logic_1164.all;


entity simpleadder is port(
	num1: in integer range 0 to 15;
	res: out integer range 0 to 31
);
end simpleadder;


architecture asimpleladder of simpleadder is
begin
	res <= num1+3;
end;