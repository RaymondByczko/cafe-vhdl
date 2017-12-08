library ieee;
use ieee.std_logic_1164.all;

library machx03;
use machx03.all;

entity simplelut4 is
port(
	a1,b1,c1,d1: in std_logic;
	res: out std_logic
);
end simplelut4;

architecture mysimplelut4 of simplelut4 is
component LUT4
	Generic (INIT:std_logic_vector);
	Port (A: in std_ulogic; B: in std_ulogic; C: in std_ulogic; D: in std_ulogic; Z: out std_ulogic);
end component;
begin
lfour: LUT4
	Generic Map (INIT=>b"1100_0000_0000_0000") 
	Port Map (A=>a1, B=>b1, C=>c1, D=>d1, Z=>res);
end mysimplelut4;