1:  REM ********************************************
2:  REM        Wahrscheinlichkeitsfunktion  
3:  REM            Verteilungsdiagramm
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

10: CLS: CLEAR: DIM FX(300)
20: PRINT „f(X“;CHR$&E5“k)->„;:INPUT „ „,F$
30: INPUT „bei ggf. p-> „;P: Q=1-P
40: INPUT „und n bzw. k-> „;N
50: INPUT „ggf. K-> „;KG
60: INPUT „bzw. N-> „;NG
70: INPUT „von X-> „;X
80: INPUT „bis k bzw. (r-k)-> „;K1
90: CLS: PRINT CHR$&92;F$: PRINT „...“
100: FOR K=X TO K1
110: FX(K)=EVAL F$
120: NEXT
130: CLS
140: INPUT „k-> „;K: CLS
150: LOCATE 0,0: PRINT CHR$&92+“f(X“;CHR$&E5,“k):“
160: MAX=FX(0)
170: FOR I=1 TO K
180: IF FX(I)>MAX THEN MAX=FX(I)
190: NEXT
200: BR=168/(K+1)
210: LINE(70,31)-(70,0),X
220: FOR I=X TO K
230: P=FX(I)/MAX: PP=PP+FX(I)
240: LINE(70+ I*BR, 31)-(70+ (I+1)*BR, 31-(P*31)),B
250: NEXT
260: LOCATE 0,2: PRINT „k=“;K
270: LOCATE 0,3: PRINT „p=“;INT(PP*1000000)/1000000;
280: WAIT: PRINT: END

