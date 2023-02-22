1:   REM ********************************************
2:   REM      Exakt binomialer 2-Felder Test
3:   REM      von Dietmar Schrausser (c)2013
4:   REM ********************************************
10:  CLEAR: CLS
20:  PRINT „Exakt binomialer 2-Felder Test, p=0.50“
30:  INPUT “a[k  ]-> “;A
40:  INPUT “b[n-k]-> “;B
50:  DEFDBL
60:  A0=A
70:  N=A+B
80:  GOSUB 320
90:  GOSUB 270: P0=P: PP=0: P1B=0
100: P1=0
110: FOR I=0 TO N
120: A=I: B=N-I
130: GOSUB 270
140: NEXT I
150: RX=P0: GOSUB 340: P0=RX
160: RX=PP: GOSUB 340: PP=RX
170: REM IF A0=N/2 THEN PP=0.5 **********
180: PRINT „P0=“;P0;: PRINT“  p=“;PP
190: PE1=PP:PE2=P1
200: IF A0>N/2 THEN PE1=P1B
210: RX=PE1: GOSUB 340: PE1=RX
220: RX=PE2: GOSUB 340: PE2=RX
230: PRINT “p[exact1]=“;PE1
240: PRINT “p[exact2]=“;PE2;
250: PRINT „  z=“;INT(Z*1000)/1000
260: CLEAR: WAIT: PRINT: END
270: P=((FACT(A+B))/(FACT A*FACT B))*(2^-A)*(2^-B)
280: IF P<=P0 THEN P1=P1+P: REM 2-seitiges Niveau
290: IF I<=A0 THEN PP=PP+P: REM p
300: IF I>=A0 THEN P1B=P1B+P: REM 1-p
310: RETURN
320: Z=(A-(A+B)/2)/SQR((A+B)/4)
330: RETURN
340: RX=INT(RX*100000000)/100000000: RETURN
