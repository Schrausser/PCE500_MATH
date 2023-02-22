1:  REM ********************************************
2:  REM        Wahrscheinlichkeitsfunktionen  
3:  REM                  f(X)
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

5: CLS: PP=0: DIM FX(300)
10: INPUT „f(X)-> „;F$
20: INPUT „bei ggf. p-> „;P: Q=1-P
30: INPUT „und n bzw. k-> „;N
40: INPUT „ggf. K-> „;KG
50: INPUT „bzw. N-> „;NG
60: INPUT „von X-> „;X
70: INPUT „bis k bzw. (r-k)-> „;K1
80: CLS: PRINT CHR$&92;F$: PRINT „...“
90: FOR K=X TO K1
100: FX(K)=EVAL F$: PP=PP+FX(K)
110: NEXT
120: LOCATE 0,1: PRINT CHR$&92+“=“;INT(PP*10000000)/10000000
130: WAIT: PRINT: END

10: CLS: PRINT: „Summationsrechnung“
20: PRINT CHR$ &92;:INPUT „f(X)-> „;X$
30: Y$=“FX+0“:INPUT „[f(X)+](FX+0)-> „;Y$
40: INPUT „X-> „;A: INPUT „k-> „; B
50: CLS: SX=0:LOCATE 1,1: PRINT CHR$&92+“f(X)= „
60: LOCATE 0,2: PRINT A
70: DEFDBL: FOR K=A TO B
80: SX=SX+EVAL X$
90: LOCATE 0,0: PRINT K: LOCATE 10,1: PRINT SX
100: LOCATE 7,1: PRINT SX; „          „
110: NEXT
120: FX=SX: SX=EVAL Y$
130: CLS: LOCATE 0,0:PRINT B: LOCATE 0,2: PRINT A
140: LOCATE 1,1: PRINT CHR$ &92+“f(X)=“;INT(SX*1000)/1000
150: CLEAR: WAIT: PRINT: END


