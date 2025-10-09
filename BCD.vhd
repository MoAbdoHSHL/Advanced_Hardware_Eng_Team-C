entity BCD is
  port(
    Nibble : in  bit_vector (3 downto 0);
    Result : out bit_vector (7 downto 0)
  );
end entity;

architecture logic of BCD is
  signal tens, ones : bit_vector (3 downto 0);
begin
  process(Nibble)
  begin
    -- Decimal 0
    if Nibble = "0000" then
      ones <= "0000"; tens <= "0000";
    elsif Nibble = "0001" then
      ones <= "0001"; tens <= "0000";
    elsif Nibble = "0010" then
      ones <= "0010"; tens <= "0000";
    elsif Nibble = "0011" then
      ones <= "0011"; tens <= "0000";
    elsif Nibble = "0100" then
      ones <= "0100"; tens <= "0000";
    elsif Nibble = "0101" then
      ones <= "0101"; tens <= "0000";
    elsif Nibble = "0110" then
      ones <= "0110"; tens <= "0000";
    elsif Nibble = "0111" then
      ones <= "0111"; tens <= "0000";
    elsif Nibble = "1000" then
      ones <= "1000"; tens <= "0000";
    elsif Nibble = "1001" then
      ones <= "1001"; tens <= "0000";
    elsif Nibble = "1010" then
      ones <= "0000"; tens <= "0001";  -- 10 = BCD 0001 0000
    elsif Nibble = "1011" then
      ones <= "0001"; tens <= "0001";  -- 11
    elsif Nibble = "1100" then
      ones <= "0010"; tens <= "0001";  -- 12
    elsif Nibble = "1101" then
      ones <= "0011"; tens <= "0001";  -- 13
    elsif Nibble = "1110" then
      ones <= "0100"; tens <= "0001";  -- 14
    elsif Nibble = "1111" then
      ones <= "0101"; tens <= "0001";  -- 15
    else
      ones <= "0000"; tens <= "0000";  -- default (optional)
    end if;

  end process;
Result <= tens & ones;
end architecture;

