1:  REM ********************************************
2:  REM      t-Verteilungs-Simulation (unvollständig)
3:  REM          von Dietmar Schrausser (c)2014
4:  REM ********************************************

5: CLS: PRINT „t-Verteilungssimulation“: Print „...“
10: CLEAR: DIM P(100)
20: FOR I=0 TO 100: P(I)=0: NEXT
30: C=1:S=0
40: LOCATE 0,1:
INPUT „bei n1=n2-> „;N: 
INPUT „zu t[crit][df]-> „;CRT
45: CLS
50: LOCATE 30,3: PRINT „Pa: [SPACE]“
53: LOCATE 0,0: PRINT „_g1___g2_____t[e]____n/M________PR_“
55: LOCATE 0,2: PRINT „_n1=n2_______t[c]_“
56: LOCATE 0,3: PRINT N: 
LOCATE 12,3: PRINT CRT
57: LINE (62,0)-(62,30),X
60: A=0:B=0:V=1:GOSUB 100: BEEP 1,2,3
65: Z=SQR((SQU(A-(N/2))/(N/2))+(SQU(B-(N/2))/(N/2)))
67: Z=V*(INT(Z*1000)/1000):IF Z>=CRT THEN S=S+1 :BEEP 1,2,3
70: LOCATE 0,1:PRINT „         „:
LOCATE 0,1: PRINT A: 
LOCATE 5,1: PRINT B: 
LOCATE 12,1: PRINT „      „:
LOCATE 12,1: PRINT Z: 
LOCATE 20,1: PRINT S;C:
 LOCATE 31,1:PRINT „     „: 
LOCATE 31,1: PRINT 100*INT((S/C)*1000)/1000
75: C=C+1
76: IF INKEY$ = „ „ THEN GOTO 200
80: GOTO 60
100: FOR I=1 TO N
110: FOR J=1 TO 5
120: A0=A0+RND(0)*6:
B0=B0+RND(0)*6
123: NEXT
125: A=A+A0/5:
B=B+B0/5:
A0=0:B0=0
140: NEXT

145: A=(INT((A/N)*10))/10
145: B=(INT((B/N)*10))/10
150: RETURN

200: CLS: X=0
210: FOR I=0 TO 2
220: PRINT „P“;I+X;“[„;P(I+X);“/“;C;“]=“;
INT((P(I+X)/C)*10000)/10000
230: NEXT
240: WAIT: X=X+3: IF X>N THEN X=0
250: GOTO 210
