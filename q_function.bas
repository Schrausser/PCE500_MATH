1:  REM ********************************************
2:  REM           Q-Funktion f(z,t)=p
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

10: CLS
20: INPUT „Q-Funktion f(z,t)=p, Q(1) Craig(2)-> „; F
30: P=0: P1=99: INPUT „z-> „;Z: INPUT „bei d-> „; D
40: CLS: DEFDBL: IF F=1 GOTO 120
50: A=0.1: GOSUB 200
60: RADIAN: FOR I=0.1 TO PI/2 STEP D
70: N=2*(SIN(I))^2
80: X=Z^2/N: X=EXP –X: P=P+X*D: B=I: IT=P: GOSUB 180
90: NEXT: DEGREE
100: P=1-P/PI
110: GOTO 170

120: X=Z/SQR 2: A=INT (X*1000)/1000: GOSUB 200
130: P=P+(EXP –(X^2))*D: X=X+D: B=X: IT=P: GOSUB 180
140: IF INT (P*100000000)=P1 GOTO 160
150: P1=INT (P*100000000): GOTO 130
160: P=1-(P*(2/SQR(PI)))/2

170: LOCATE 0,3: PRINT „Q(„;Z;“,t)=“;INT(P*1000)/1000;: CLEAR: WAIT: PRINT: END

180: LOCATE 0,0: PRINT B;“   „
190: LOCATE 1,1: PRINT CHR$&D0+ “dt=“;IT; „    „: RETURN

200: LOCATE 0,2: PRINT A: RETURN
