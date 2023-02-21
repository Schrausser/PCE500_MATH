1:  REM ********************************************
2:  REM            Kombinatorik
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

10: INPUT „Kombinationen von n-> „;N
20: INPUT „ohne Wiederholung zu m-> „;M
30: C= FACT(N)/(FACT M * FACT (N-M))
40: PRINT „C=„;C
50: WAIT:PRINT:END

10: INPUT „Kombinationen von n-> „;N
20: INPUT „mit Wiederholung zu m-> „;M
30: WC= FACT(N+M-1)/(FACT M * FACT (N-1))
40: PRINT „wC=„;WC
50: WAIT:PRINT:END

10: INPUT „Variationen von n-> „;N
20: INPUT „zu m-> „;M
30: WV=N^M
40: V=FACT (N)/FACT (N-M)
50: PRINT „wV=„;WV
60: IF M<>N THEN PRINT „V=„;V
70: IF M=N  THEN PRINT „V=P=„;V
80: WAIT:PRINT:END

10: K1=1:INPUT „Elemente n-> „;N
20: INPUT „zu Permutationsklassen m-> „;M
30: FOR I=1 TO M
40: PRINT „k[“;I;“]->“;:INPUT“ „;K
50: K1=K1*FACT(K)
60: NEXT I
70: WP=FACT (N)/K1
80: PRINT „wP=„;WP
90: WAIT:PRINT:END

