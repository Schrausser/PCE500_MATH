1:  REM ********************************************
2:  REM      Multinomiale Wahrscheinlichkeit 
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

5: CLS: PRINT „Multinomiale Wahrscheinlichkeit (k=3)“
10: INPUT „a[k1]-> „;A: LOCATE 11,1: PA=1/3: 
INPUT „mit p(1/3)-> „;PA
20: INPUT „b[k2]-> „;B: LOCATE 11,2: PB=1/3: 
INPUT „mit p(1/3)-> „;PB
30: INPUT „c[k3]-> „;C: LOCATE 11,3: PC=1/3:
INPUT „mit p(1/3)-> „;PC
40: CLS: DEFDBL: N=A+B+C: PM=0 
50: FOR I=0 TO N
60: FOR J=0 TO N
70: IF N-I-J>=0 AND N-I-J<=N THEN PRINT I;J;N-I-J;:GOSUB 100:
PRINT P;PM1;“   „
80: NEXT: NEXT
90: CLEAR: WAIT: PRINT: END

100: P=((FACT N)/(FACT I * FACT J * FACT (N-I-J)))*
(PA^I* PB^J* PC^(N-I-J))
110: PM=PM+P
115: P=(INT(P*100000000))/100000000
117: PM1=(INT(PM*100000000))/100000000
120: RETURN

