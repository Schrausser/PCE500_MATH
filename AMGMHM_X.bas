1:   REM ********************************************
2:   REM            AM, GM, HM via (X)
3:   REM      von Dietmar Schrausser (c)2014
4:   REM ********************************************

5: GM=1: AM=0: HM=0
10: INPUT „(X)[N]-> “;N
10: INPUT „bei [k]-> “;K
20: FOR I=1 TO N
30: X=MD(I-1,K-1)
40: GM=GM*X^(1/N): HM=HM+1/X: AM=AM+X/N
50: NEXT I
60: PRINT „AM= „;AM
70: PRINT „GM= „;GM
80: PRINT „HM= „;N/HM
90: WAIT:PRINT:END


