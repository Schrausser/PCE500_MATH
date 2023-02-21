1:  REM ********************************************
2:  REM             Regressionsgraph 
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

10: CLS: CLEAR: PRINT „Korrelationsfunktion r(x,y)“:
INPUT „nx=ny-> „;N
20: DIM R(N,2)
30: X=0: Y=0: XY=0: X2=0: Y2=0: PRINT „...“
40: FOR I= 1 TO N: R(I,1)=RND(0): R(I,2)=R(I,1)+RND(0)
50: XY=XY+R(I,1)*R(I,2): X=X+R(I,1): Y=Y+R(I,2)
60: X2=X2+R(I,1)^2: Y2=Y2+R(I,2)^2
70: NEXT
80: XY=XY/N: X=X/N: Y=Y/N: X2=X2/N: Y2=Y2/N: 
X21=X^2: Y21=Y^2:
90: R=(XY-(X*Y))/(SQR(X2-X21)*SQR(Y2-Y21))
100: LOCATE 0,0: PRINT „r(x,y):“
110: LOCATE 0,2: PRINT „Red=“;INT((R^2)*100);“%“
120: LOCATE 0,3: PRINT „r=“;INT(R*100)/100
130: LINE (70,31)-(70,0),X
140: LINE (154,31)-(154,0),X,&AAAA
150: LINE (70,15)-(238,15),X,&AAAA
160: MAXX=R(1,1):MAXY=R(1,2)
170: FOR I=2 TO N
180: IF R(I,1)>MAXX THEN MAXX=R(I,1)
190: IF R(I,2)>MAXY THEN MAXY=R(I,2)
200: NEXT
210: FOR I=1 TO N
220: PX= R(I,1)/MAXX
230: PY= R(I,2)/MAXY
240: LINE(70+(PX*168),30-(PY*31))-(71+(PX*168),31-(PY*31)),BF
250: NEXT
260: LINE(70,(31/2)+(R*(31/2)))-(238,(31/2)-(R*(31/2))),X
270: REM WAIT: PRINT: END
280: WAIT 150: PRINT: CLS: WAIT 0: GOTO 30
