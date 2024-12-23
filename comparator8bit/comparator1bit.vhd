library ieee;
use ieee.std_logic_1164.all;

entity comparator1bit is
    port(
        x_in , y_in , a , b: in std_logic;
        x_out , y_out : out std_logic
    );

end entity;

architecture selected_arch of  comparator1bit is

	signal xy_in : std_logic_vector(1 downto 0);
	signal xy_out : std_logic_vector (1 downto 0);

begin

    xy_in <= x_in & y_in;

    xy_out <= 
              "10" when xy_in = "10" else
              "01" when xy_in = "01" else
	      "10" when a ='1' and b ='0' else
  	      "01" when a ='0' and b ='1' else
	      "00";

    x_out <= xy_out(1);
    y_out <= xy_out(0);

end architecture;
