1:  REM ********************************************
2:  REM           Multinomial Test 
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

5: GOSUB 200
10: INPUT „a[k1]-> „;A: LOCATE 11,1: PA=1/3: 
INPUT „mit p(1/3)-> „;PA
20: INPUT „b[k2]-> „;B: LOCATE 11,2: PB=1/3: 
INPUT „mit p(1/3)-> „;PB
30: INPUT „c[k3]-> „;C: PC=1-PB-PA: 
IF PA=1/3 AND PB=1/3 THEN PC=1/3
35: GOSUB 300
40: DEFDBL: N=A+B+C: I=A: J=B: GOSUB 100: 
PM=0: P0=P: PA2=0: PA1=0: GOSUB 200
50: FOR I=0 TO N
60: FOR J=0 TO N
70: IF N-I-J>=0 AND N-I-J<=N THEN GOSUB 100:
LOCATE 0,3: PRINT „p=“;PM1;“                 „
80: NEXT: NEXT
90: CLS: LOCATE 0,0: 
PRINT „P0=“;(INT(P0*100000000))/100000000;
PRINT „ P=“;(INT(P1*10000))/10000;
PRINT „ q=“;(INT((1-P1)*10000))/10000:
LOCATE 0,1
95: PRINT „p[exact1]=“;P1
97: PRINT „p[exact2]=“;P2
99: CLEAR: WAIT: PRINT: END

100: P=((FACT N)/(FACT I * FACT J * FACT (N-I-J)))*
(PA^I* PB^J* PC^(N-I-J))
110: PM=PM+P: IF P<=P0 THEN PA2=PA2+P
112: IF I<=A AND P<=P0 THEN PA1=PA1+P
113: REM IF I<=A AND N-I-J<=C THEN PA1=PA1+P
114: REM IF J<=B AND N-I-J<=C THEN PA1=PA1+P
115: PP=(INT(P*100000000))/100000000
117: PM1=(INT(PM*100000000000000000#))/100000000000000000#
118: P2=(INT(PA2*100000000))/100000000
119: P1=(INT(PA1*100000000))/100000000
120: RETURN

200: CLS: PRINT „Exakt multinomialer 3-Felder Test:“
210: RETURN

300: IF A>B THEN D1=A:A=B:B=D1: D1=PA:PA=PB:PB=D1
310: IF B>C THEN D1=B:B=C:C=D1: D1=PB:PB=PC:PC=D1
320: IF A>B THEN D1=A:A=B:B=D1: D1=PA:PA=PB:PB=D1
330: RETURN

