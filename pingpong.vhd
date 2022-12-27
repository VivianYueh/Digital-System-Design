library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pingpong is 
 port(
  clk:in std_logic;
  reset:in std_logic;
  P:in std_logic;
  K:in std_logic;
  L:out std_logic_vector(0 to 9);
  HEX0,HEX3:out std_logic_vector(6 downto 0);
  v0,v1,v2,v3:out std_logic
 );
end pingpong;
architecture pingpong of pingpong is
	type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22);
	signal present_state:state;
	signal next_state:state;
	signal point,point1:std_logic_vector(2 downto 0);
	signal plus,plus1:std_logic; 
	signal total:std_logic_vector(2 downto 0);
	signal dot0,dot1:std_logic_vector(1 downto 0);
	signal clk2hz:std_logic;
	signal dcnt:std_logic_vector(24 downto 0);
	signal ch0,ch1:std_logic;
begin

 process(clk)
	begin
		if clk'event and clk = '1' then
			if dcnt = 24999999 then
				dcnt <= "0000000000000000000000000";
			else
				dcnt <= dcnt + 1;
			end if;
		end if;
	end process;

	clk2hz <= dcnt(22);
	
	process(clk2hz,reset)
	begin
			if reset = '0' then 
				present_state <= s0;
			elsif clk2hz'event and clk2hz = '1' then
				present_state <= next_state;
			end if;
	end process;
process(P,K,present_state)
 begin
  case present_state is
   when s0=>
    if P='0' then
     next_state<=s1;
    else
     next_state<=s0;
    end if;
    L<="0000000000";
	 plus<='0';
	 plus1<='0';
   when s1=>
    next_state<=s2;
    L<="1000000000";
   when s2=>
    next_state<=s3;
    L<="0100000000";
   when s3=>
    next_state<=s4;
    L<="0010000000";
   when s4=>
    next_state<=s5;
    L<="0001000000";
   when s5=>
    next_state<=s6;
    L<="0000100000";
   when s6=>
    next_state<=s7;
    L<="0000010000";
   when s7=>
    next_state<=s8;
    L<="0000001000";
   when s8=>
    next_state<=s9;
    L<="0000000100";
   when s9=>
    if K='0' then 
     next_state<=s22;
    else 
     next_state<=s10;
    end if;
    L<="0000000010";
   when s10=>
    if K='1' then 
     next_state<=s22;
    else 
     next_state<=s11;
    end if;
    L<="0000000001";
   when s11=>
    next_state<=s12;
    L<="0000000010";
   when s12=>
    next_state<=s13;
    L<="0000000100";
   when s13=>
    next_state<=s14;
    L<="0000001000";
   when s14=>
    next_state<=s15;
    L<="0000010000";
   when s15=>
    next_state<=s16;
    L<="0000100000";
   when s16=>
    next_state<=s17;
    L<="0001000000";
   when s17=>
    next_state<=s18;
    L<="0010000000";
   when s18=>
    if P='0' then 
     next_state<=s20;
    else 
     next_state<=s19;
    end if;
    L<="0100000000";
   when s19=>
    if P='1' then 
     next_state<=s20;
    else 
     next_state<=s2;
    end if;
    L<="1000000000";
   when s20=>
    if K='1' then 
     next_state<=s20;
    else 
     next_state<=s21;
    end if;
	 plus1<='1';
    L<="0000000000";
   when s21=>
    next_state<=s11;
    L<="0000000001";
	when s22=>
    next_state<=s0;
    L<="0000000000";
	 plus<='1';

  end case;
 end process;
 process(plus,reset)
	begin
		if reset = '0' then
			point <= "000";
			dot0<="00";
		elsif ch1='1' then
			point<="000";
		elsif ch0='1' then
			ch0<='0';
		elsif plus'event and plus = '1' then
			if point < 4 then
				point <= point + 1;
			else
				dot0<=dot0+1;
				ch0<='1';
				point<="000";
			end if;
		end if;
	end process;
	process(plus1,reset)
	begin
		if reset = '0'then
			point1 <= "000";
			dot1<="00";
		elsif ch0='1' then
			point1<="000";
		elsif ch1='1' then
			ch1<='0';
		elsif plus1'event and plus1 = '1' then
			if point1 < 4 then
				point1 <= point1 + 1;
			else
				dot1<=dot1+1;
				ch1<='1';
				point1<="000";
			end if;
		end if;
	end process;

				
	HEX0 <=	"1000000" when point = 0 else
			"1111001" when point = 1 else
			"0100100" when point = 2 else
			"0110000" when point = 3 else
			"0011001" when point = 4 else
			"0010010" when point = 5 else
			"1111111";
	HEX3 <=	"1000000" when point1 = 0 else
			"1111001" when point1 = 1 else
			"0100100" when point1 = 2 else
			"0110000" when point1 = 3 else
			"0011001" when point1 = 4 else
			"0010010" when point1 = 5 else			
			"1111111";
	v0 <= '0' when dot0 = 1 else
		'0' when dot0=2 else
		'1';
	v1 <= '0' when dot0 = 2 else
		'1';
	v2 <= '0' when dot1 = 1 else
		'0' when dot1=2 else
		'1';
	v3 <= '0' when dot1 = 2 else
		'1';
		
end pingpong;
