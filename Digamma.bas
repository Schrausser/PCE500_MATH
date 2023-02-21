1:  REM ********************************************
2:  REM             Digamma Funktion  
3:  REM              0(x)=f(x,t)dt
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

10: CLS: PRINT: „Digamma “+CHR$ &B7+“0(x)=“+CHR$&D0+“f(x,t)dt“
20: INPUT „bei x-> „;G: INPUT „zu d-> „;D: I=0:PSI=0
30: FOR T=D TO 10 STEP D
40: PSI=PSI+(EXP (-T)/T)-(EXP(-T*G)/(1-EXP(-T)))
50: LOCATE 0,3: PRINT „t=“;T
60: NEXT
70: CLS: PRINT CHR$&B7+ “0=“ +CHR$&D0+ “dt=“; PSI*D
80: END



