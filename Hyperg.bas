1:   REM ********************************************
2:   REM     Hypergeometrischer 4-Felder Test
3:   REM      von Dietmar Schrausser (c)2013
4:   REM ********************************************
10:  CLEAR: CLS
20:  PRINT „Exakt hypergeometrischer 4-Felder Test„: PRINT „nach R. A. Fisher (Fisher Exact Test)“
30:  INPUT “a[k      ]-> “;A
40:  INPUT “b[K-k    ]-> “;B
50:  INPUT “c[n-k    ]-> “;C 
55:  INPUT “d[N-K-n-k]-> “;D
60:  DEFDBL
70:  A1=A+B: A2=C+D: B1=A+C: B2=B+D: A0=A
80:  N=A1+A2: P1=0: SW=A1*A2*B1*B2: AM=(A1*B1)/N
90:  IF SW <> 0 THEN GOSUB 330
100: GOSUB 280: P0=P: PP=0: P1B=0
110: MAX=A1
120: IF B1>MAX THEN MAX=B1: P1=0
130: FOR I=0 TO MAX
140: A=I: B=A1-I: C=B1-I: D=N-A-B-C
150: IF B>=0 AND C>=0 AND D>=0 THEN GOSUB 280
160: NEXT I
170: RX=P0: GOSUB 360: P0=RX
180: RX=PP: GOSUB 360: PP=RX
190: PRINT „P0=“;P0;: PRINT“  p=“;PP
200: PE1=PP:PE2=P1
210: IF A0>AM THEN PE1=P1B
220: RX=PE1: GOSUB 360: PE1=RX
230: RX=PE2: GOSUB 360: PE2=RX
240: PRINT “P[exact1]=“;PE1
250: PRINT “P[exact2]=“;PE2;
260: IF SW<>0 THEN PRINT „  z=“;INT(Z*1000)/1000
270: CLEAR: WAIT: PRINT: END
280: P=(FACT(A+B)*FACT(C+D)*FACT(A+C)*FACT(B+D))/(FACT N*FACT A*FACT B*FACT C*FACT D)
290: IF P<=P0 THEN P1=P1+P: REM 2-seitiges Niveau
300: IF I<=A0 THEN PP=PP+P: REM p
310: IF I>=A0 THEN P1B=P1B+P: REM 1-p
320: RETURN
330: PD=((D+B)*(C+D))/(N^2):PD1=((D+B-1)*(C+D-1))/(N-1)^2
340: Z=(D-N*PD)/SQR(N*PD*(1-PD)-N*(N-1)*PD*(PD-PD1))
350: RETURN
360: RX=INT(RX*100000000)/100000000: RETURN


