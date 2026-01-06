library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder_4bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (4 downto 0));
end fulladder_4bit;

architecture Behavioral of fulladder_4bit is
    component fulladder_1bit
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               s : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;
    
    signal carry : STD_LOGIC_VECTOR(3 downto 1);
begin
    fa0: fulladder_1bit port map(a=>A(0), b=>B(0), cin=>'0', s=>S(0), cout=>carry(1));
    fa1: fulladder_1bit port map(a=>A(1), b=>B(1), cin=>carry(1), s=>S(1), cout=>carry(2));
    fa2: fulladder_1bit port map(a=>A(2), b=>B(2), cin=>carry(2), s=>S(2), cout=>carry(3));
    fa3: fulladder_1bit port map(a=>A(3), b=>B(3), cin=>carry(3), s=>S(3), cout=>S(4));
end Behavioral;