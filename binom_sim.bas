1:  REM ********************************************
2:  REM               Binomial-Simulation
3:  REM          von Dietmar Schrausser (c)2014
4:  REM ********************************************

5: CLS: PRINT „Binomialsimulation“: Print „...“
10: CLEAR: DIM P(100)
20: FOR I=0 TO 100: P(I)=0: NEXT
30: C=1:S=0
40: LOCATE 0,1:
INPUT „bei n-> „;N: 
INPUT „zu z[crit]-> „;CRT
45: CLS
50: LOCATE 30,3: PRINT „Pa: [SPACE]“
53: LOCATE 0,0: PRINT „_a___b_____z[e]____n/M________PR_“
55: LOCATE 0,2: PRINT „_n_________z[c]_“
56: LOCATE 0,3: PRINT N: 
LOCATE 10,3: PRINT CRT
57: LINE (53,0)-(53,30),X
60: A=0:V=1:GOSUB 100: B=N-A:BEEP 1,2,3: IF A<N/2 THEN V=-1
65: Z=SQR((SQU(A-(N/2))/(N/2))+(SQU(B-(N/2))/(N/2)))
67: Z=V*(INT(Z*1000)/1000):IF Z>=CRT THEN S=S+1 :BEEP 1,2,3
70: LOCATE 0,1: PRINT A;B: 
LOCATE 10,1: PRINT „      „: 
LOCATE 10,1: PRINT Z: 
LOCATE 18,1: PRINT S;C:
LOCATE 29,1:PRINT „     „: 
LOCATE 29,1: PRINT 100*INT((S/C)*1000)/1000
75: C=C+1
76: IF INKEY$ = „ „ THEN GOTO 200
80: GOTO 60

100: FOR I=1 TO N
110: R=RND(0)
120: IF R<=0.5 THEN A=A+1
140: NEXT
145: P(A)=P(A)+1
150: RETURN

200: CLS: X=0
210: FOR I=0 TO 2
220: PRINT „P“;I+X;“[„;P(I+X);“/“;C;“]=“;
INT((P(I+X)/C)*10000)/10000
230: NEXT
240: WAIT: X=X+3: IF X>N THEN X=0
250: GOTO 210
