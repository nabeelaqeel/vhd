--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

library ieee;
use ieee.std_logic_1164.all;

entity twobytwo_tb is 
end twobytwo_tb;

architecture conditional of twobytwo_tb is 

component twobytwo

Port (
    a , b : in std_logic_vector (1 downto 0);
    p : out std_logic_vector (3 downto 0)
);
end component;

signal a_tb , b_tb : std_logic_vector (1 downto 0) :=(others => '0');
signal p_tb : std_logic_vector (3 downto 0);


begin 

uut : twobytwo port map (

a => a_tb,
b => b_tb,
p => p_tb

);

stim_proc : process

begin 

a_tb <= "00";
b_tb <= "00";
wait for 10 ns;
a_tb <= "00";
b_tb <= "01";
wait for 10 ns;
a_tb <= "00";
b_tb <= "10";
wait for 10 ns;
a_tb <= "00";
b_tb <= "11";
wait for 10 ns;
a_tb <= "01";
b_tb <= "00";
wait for 10 ns;
a_tb <= "01";
b_tb <= "01";
wait for 10 ns;
a_tb <= "01";
b_tb <= "10";
wait for 10 ns;
a_tb <= "01";
b_tb <= "11";
wait for 10 ns;

a_tb <= "10";
b_tb <= "00";
wait for 10 ns;
a_tb <= "10";
b_tb <= "01";
wait for 10 ns;
a_tb <= "10";
b_tb <= "10";
wait for 10 ns;
a_tb <= "10";
b_tb <= "11";
wait for 10 ns;
a_tb <= "11";
b_tb <= "00";
wait for 10 ns;
a_tb <= "11";
b_tb <= "01";
wait for 10 ns;
a_tb <= "11";
b_tb <= "10";
wait for 10 ns;
a_tb <= "11";
b_tb <= "11";
wait for 10 ns;

wait;

end process;
end conditional;
