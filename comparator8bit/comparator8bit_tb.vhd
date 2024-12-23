library ieee;
use ieee.std_logic_1164.all;

entity comparator8bit_tb is 
end entity;

architecture structure of comparator8bit_tb is 

    component comparator8bit 
    port(
        a ,b : in std_logic_vector(7 downto 0);
        cmp_in : in std_logic_vector (1 downto 0);
        cmp_out : out std_logic_vector(1 downto 0)
    );
    end component;

    signal  a_tb ,b_tb : std_logic_vector(7 downto 0);
    signal cmp_in_tb : std_logic_vector (1 downto 0);
    signal cmp_out_tb : std_logic_vector(1 downto 0);

begin

    dut : comparator8bit port map (a_tb,b_tb,cmp_in_tb,cmp_out_tb);

stim_proc : process

begin


a_tb <= "00000000";
b_tb <= "00000000";
cmp_in_tb <= "00";
wait for 10 ns;
a_tb <= "10000000";
b_tb <= "00000000";
cmp_in_tb <= "00";
wait for 10 ns;
a_tb <= "00000000";
b_tb <= "00001000";
cmp_in_tb <= "00";
wait for 10 ns;
a_tb <= "00000001";
b_tb <= "00000011";
cmp_in_tb <= "10";
wait for 10 ns;
a_tb <= "00001001";
b_tb <= "00000011";
cmp_in_tb <= "01";
wait for 10 ns;
wait;
end process;
end;

