1:  REM ********************************************
2:  REM       Euler-Mascheroni Konstante 
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

10: CLS: PRINT „Euler-Mascheroni „+CHR$&A3
20: INPUT „lim.-> „;L:G=0:DEFDBL:CLS
30: FOR K=1 TO L
40: G=G+1/K:G1=G-LN(K): LOCATE 0,3: PRINT CHR$ &A3+“=“;G1: LOCATE 15,3:PRINT „, bei k=“;k
50: NEXT
60: CLEAR: END

