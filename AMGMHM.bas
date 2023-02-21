
1:   REM ********************************************
2:   REM             AM, GM, HM
3:   REM      von Dietmar Schrausser (c)2014
4:   REM ********************************************

5: CLEAR:GM=1
10: INPUT „n[x]-> “;N
20: FOR I=1 TO N
30: PRINT „x[„;I;“]->“;: INPUT“ „;X
40: GM=GM*X^(1/N): HM=HM+1/X: AM=AM+X/N
50: NEXT I
60: PRINT „AM= „;AM
70: PRINT „GM= „;GM
80: PRINT „HM= „;N/HM
90: WAIT:PRINT:END


