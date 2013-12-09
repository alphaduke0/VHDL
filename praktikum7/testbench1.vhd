---------------------------------------
-- Testbench für 4x1 Multiplexer
---------------------------------------
entity TEST is
end TEST;
architecture VERHALTEN of TEST is
signal S1: bit_vector(1 downto 0);
signal E1: bit_vector(3 downto 0);
signal Y1: bit;
component MUX4X1
port ( S: in bit_vector(1 downto 0);
E: in bit_vector(3 downto 0);
Y: out bit);
end component;
for all: MUX4X1 use entity work.MUX4X1(VERHALTEN);
begin
E1 <= "1010", "0101" after 400 ns;
S1 <= "00", "01" after 100 ns, "10" after 200 ns, "11" after 300 ns,
"00" after 400 ns, "01" after 500 ns, "10" after 600 ns,
"11" after 700 ns;
C1: MUX4X1 port map(S1, E1, Y1);
end VERHALTEN;