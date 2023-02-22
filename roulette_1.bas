1:  REM ********************************************
2:  REM           Roulette Simulation 1 
3:  REM       von Dietmar Schrausser (c)2014
4:  REM ********************************************

10: CLS
20: N=0:P=1:P1=1:
LOCATE 0,0: PRINT „          „:
LOCATE 0,0: INPUT „z-> „;Y
30: X=RND(37):X=X-1:I=INT(X/2)
40: LOCATE 35,3:PRINT X
50: IF X=Y THEN GOTO 20
60: N=N+1: LOCATE 0,3: PRINT „n=“;N
70: P=P*(1-(1/37)):
LOCATE 25,0:PRINT „p[v]=“; INT ((1-P)*1000)/1000
80: IF X/2<>I THEN P1=1
90: P1=P1*(1-((18/37))):
LOCATE 25,1:PRINT „p[|2]=“;INT((1-P1)*1000)/1000
100: IF X<>Y THEN GOTO 30

