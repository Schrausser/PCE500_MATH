1:  REM ********************************************
2:  REM            z zu Skalenwert
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

10: INPUT „z-> „;Z
20: C=5+2*Z:IF C<0 THEN C=0
30: PRINT „C=“;C;
40: ST=5+1.96*Z: IF ST<1 THEN ST=1: IF ST>9 THEN ST=9
50: PRINT „Stanine=“;ST;
60: ST=5.5+2*Z: IF ST<1 THEN ST=1: IF ST>10 THEN ST=10
70: PRINT „Sten=“;ST;
80: WP=10+3*Z: IF WP<0 THEN WP=0
90: PRINT „WP=“;WP;
100: PRINT „SW/Z=“;100+10*Z;
110: PRINT „IQ=“;100+15*Z;
120: T=50+10*Z: IF T<0 THEN T=0
130: PRINT „T=“;T;
140: SN=3-Z: IF SN<0 THEN SN=0: IF SN>6 THEN SN=6
150: PRINT „SN=“;SN;
160: WAIT:PRINT:END