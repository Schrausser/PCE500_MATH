
1:   REM ********************************************
2:   REM        Negativ Binomial Simulation
3:   REM      von Dietmar Schrausser (c)2014
4:   REM ********************************************

10: CLS: PRINT „Negativ Binomial Simulation:“
20: INPUT „bei n-> „;N
30: PN=0: PX1=0: INPUT „Zahl z-> „;Z1
40: P=1/N
50: K=1
60: R=0
70: Z=RND(N)
80: PN1=(FACT (K+R-1)/(FACT R * FACT (K-1))*P^K*(1-P)^R
90: PN=PN+PN1: R=R+1
100: LOCATE 0,3: PRINT Z;
110: IF Z<>Z1 THEN GOTO 70
120: PN=INT ((PN^(1/(K+1)))*100)/100
130: PX1=PX1+PN: PX=INT ((PX1/K)*100)/100
140: WAIT: PRINT „p=“;PN;“k=“;K;“r=“;R+K;“px=“;PX
150: WAIT 0: PRINT: R=R+K: K=K+1: R=R-K: PN=0: GOTO 70 
