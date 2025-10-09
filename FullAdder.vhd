entity FullAdder is
port(A,B,Cin:in bit;
     S,Cout:out bit);
end entity;

Architecture design of FullAdder is
signal s1:bit:='0';
signal c1,c2:bit;

component HalfAdder
port(A,B:in bit;
     S,C:out bit);
end component;

begin

FA0: HalfAdder port map(
A=>A,
B=>B,
S=>s1,
C=>c1
);

FA1: HalfAdder port map(
A=>Cin,
B=>s1,
S=>S,
C=>c2
);

--carry out
Cout<=c1 or c2;
end architecture;