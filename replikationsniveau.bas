1:  REM ********************************************
2:  REM           Replikationsniveau 
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

10: CLS: PRINT „Replikationsniveau pa[rk]“:PR=1:N=0
20: PRINT „pa[„;N;“]->“;: INPUT „ „;P
30: PR=PR*P:
IF N>0
PRINT „pa[r„;N;“]-> “; INT((PR^(1/(N+1)))*1000)/1000
40: N=N+1
50: GOTO 20


