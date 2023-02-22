1:  REM ********************************************
2:  REM         Konfidenzintervall CI
3:  REM      von Dietmar Schrausser (c)2013
4:  REM ********************************************

5: CS:PRINT “Konfidenzintervall CI“
10: PRINT „zu  „+CHR$&BF+“->“;: INPUT „ “;X
20: PRINT „mit „+CHR$&B2+“’[„+CHR$&BF+“]->“;: INPUT „ “;SX
30: PRINT „bei „,: INPUT „t[crit][df]-> “;T
40: CI=INT((SX*T)*1000)/1000: CIU=X-CI: CIO=X+CI
50: PRINT „CI[„+CHR$&CE;CI;“]=“;CIU;“<“;CIO;
60: WAIT: PRINT: END
