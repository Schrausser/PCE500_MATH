1:  REM ********************************************
2:  REM      Additive Wahrscheinlichkeit bei 
3:  REM         unabhängigen Ereignissen
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

10: CLS: 
PRINT „Additive Wahrscheinlihkeit p[v] bei„:
PRINT „unabhängigen Ereignissen:“
20: PX=1:N=1
30: PRINT „p“;N;“->“;:INPUT“ „;P
40: PA=1-P
50: PX=PX*PA:PRINT „p[v]= „;INT ((1-PX)*1000)/1000;
60: IF 1-PX>=0.995 THEN PRINT „!“: GOTO 100
70: IF 1-PX>=0.99  THEN PRINT „**“: GOTO 100
80: IF 1-PX>=0.95  THEN PRINT „*“: GOTO 100
90: IF 1-PX>=0.9   THEN PRINT „+“ ELSE PRINT „ „
100: N=N+1: GOTO 30
