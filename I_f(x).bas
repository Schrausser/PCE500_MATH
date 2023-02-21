1:  REM ********************************************
2:  REM             Riemann-Integral  
3:  REM                  Jf(x)
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

10: CLS: PRINT: „Riemann-Integral“
20: PRINT CHR$ &D0;:INPUT „f(x)-> „;X$
30: Y$=“FX+0“:INPUT „[f(x)+](FX+0)-> „;Y$
40: INPUT „a-> „;A: INPUT „b-> „; B
45: INPUT „d-> „;D: SX=0
50: CLS:LOCATE 1,1: PRINT CHR$&D0+“f(x)dx= „
60: LOCATE 0,2: PRINT INT(A*100)/100
70: DEFDBL: FOR X=A TO B STEP D
80: SX=SX+EVAL X$*D
90: LOCATE 0,0: PRINT INT(X*100)/100
100: LOCATE 10,1: PRINT SX; „          „
110: NEXT
120: FX=SX: SX=EVAL Y$
130: CLS: LOCATE 0,0:PRINT B: LOCATE 0,2: PRINT A
140: LOCATE 1,1: PRINT CHR$ &D0+“f(x)dx=“;INT(SX*1000)/1000
150: CLEAR: WAIT: PRINT: END
