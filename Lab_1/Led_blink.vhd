--============================================================
-- LED Blinking Example for XC7A100T-CSG324-1 FPGA
-- Blinks LED connected to pin H17
--============================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led_blink is
    Port (
        clk : in  STD_LOGIC;   -- Input clock
        led : out STD_LOGIC    -- Output to LED
    );
end led_blink;

architecture Behavioral of led_blink is
    -- 16-bit counter for simulation (can increase for real FPGA)
    signal counter : unsigned(15 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;  -- Increment counter
        end if;
    end process;

    -- LED toggles based on high bit of counter
    led <= counter(15);

end Behavioral;
