 Library ieee;
 Use ieee.std_logic_1164.all;
 
Entity MagComp is
 Generic ( N : natural := 64 );
 Port (
 X, Y : in std_logic_vector( N-1 downto 0 );
 EQ, GT : out std_logic );
 End Entity MagComp;
 Architecture rtl of MagComp is
 Signal Xup, Yup, Xlo, Ylo : std_logic_vector( N/2-1 downto 0 );
 Signal EQup, GTup, EQlo, GTlo : std_logic;
 Begin
 Recur: If N > 1 Generate
 Xup <= X(N-1 downto N/2);
 Yup <= Y(N-1 downto N/2);
 Xlo <= X(N/2-1 downto 0 );
 Ylo <= Y(N/2-1 downto 0 );
 Upper: Entity work.MagComp(rtl) Generic map( N => N/2 )
 port map( X => Xup, Y => Yup, EQ => EQup, GT => GTup );
 Lower: Entity work.MagComp(rtl) Generic map( N => N/2 )
 port map( X => Xlo, Y => Ylo, EQ => EQlo, GT => GTlo );
 EQ <= EQup and EQlo;
 GT <= GTup or (EQup and GTlo);
 End Generate Recur;
 Leaf: If N = 1 Generate
 EQ <= X(0) xnor Y(0);
 GT <= X(0) and not(Y(0));
 End Generate Leaf;
 End Architecture rtl;