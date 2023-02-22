1:  REM ********************************************
2:  REM        Verteilungsfunktion von (n)
4:  REM      von Dietmar Schrausser (c)2014
5:  REM ********************************************

10: CLS: PRINT „Verteilungsfunktion von (n)“: 
INPUT „bei n-> “;N: DIM X(N): SW=0
20: INPUT „PR-> “;PR:PR=PR/100:PRINT „...“
30: FOR I=1 TO N: X(I)=RND(9)+RND(9): NEXT
40: FOR I=1 TO N-1
50: IF X(I+1)<X(I) THEN D=X(I):X(I)=X(I+1):X(I+1)=D:SW=1
60: NEXT: IF SW=0 THEN GOTO 80
70: SW=0: GOTO 40
80: LOCATE 0,0: PRINT „f(n):                          „
90: BR=168/N
100: LINE(70,31)-(70,0),X
110: FOR I=0 TO N-1
120: P=X(I+1)/X(N)
130: IF I<=N*PR THEN 
LINE(70+ I*BR, 31)-(70+ (I+1)*BR, 31-(P*31)),BF
140: IF I>N*PR THEN 
LINE(70+ I*BR, 31)-(70+ (I+1)*BR, 31-(P*31)),B
150: NEXT
160: LOCATE 0,3: PRINT „x=“;X(N*PR);
170: WAIT: PRINT: CLS: END

