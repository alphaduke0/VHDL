entity DEMUX4X1 is 
  port(
    E: in bit;
    Y: out bit_vector ( 3 downto 0);
    S: in bit_vector( 1 downto 0)
  );
end DEMUX4X1;

architecture VERHALTEN of DEMUX4X1 is begin
  Y(0) <= not S(0) and not S(1) and E; 
  Y(1) <= not S(0) and S(1) and E;
  Y(2) <= S(0) and not S(1) and E;
  Y(3) <= S(0) and S(1) and E;   
end VERHALTEN;