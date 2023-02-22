1:  REM ********************************************
2:  REM           Effektgrösse Epsilon
4:  REM      von Dietmar Schrausser (c)2013
5:  REM ********************************************

5: CLS: PRINT „Effektgrösse “+CHR$&A5 
10:  PRINT „bei „+CHR$&BF +CHR$&D1 +“->“;: INPUT „ „; X0
20:  PRINT „zu  „+CHR$&BF +CHR$&D2 +“->“;: INPUT „ „; X1
30:  PRINT „mit „ +CHR$&B2 +CHR$&D1 +“=“
     +CR$&b2 +CHR$&d2 +“->“;: INPUT „ „; S
40:  PRINT „und „ +CHR$&BF +CHR$&D1 
     +CHR$&D2 +“->“;: INPUT „ „; X
50:  E=(X1-X0)/S: E=INT (E*100)/100
60:  Z0=(X-X0)/S: Z1=(X-X1)/S
70:  SW=(X0+X1)/2
80:  PRINT CHR$&A5 +“=“; ABS E
90:  REM PRINT „x[„;BS E/2;“]=“;SW;
100: PRINT „z“ +CHR$&A1 +“=“; INT (Z0*100)/100;
110: PRINT „z“ +CHR$&A2 +“=“; INT (Z1*100)/100;
120: WAIT: PRINT: END 

