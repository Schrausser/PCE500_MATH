
1:   REM ********************************************
2:   REM     Negativ-Binomialwahrscheinlichkeit
3:   REM      von Dietmar Schrausser (c)2014
4:   REM ********************************************

10: CLS: PRINT „Negativ-Binomial Wahrscheinichkeit:“
20: PN=0
30: PRINT „zu p->„;: INPUT „ „;P
40: PRINT „und k->„;: INPUT „ „;K
50: PRINT „bei r->„;: INPUT „ „;R
60: FOR I=0 TO R-K
70: PN1=(FACT (K+I-1)/(FACT I*FACT (K-1)))*P^K*(1-P)^I
80: PN=PN+PN1
90: NEXT
100: PRINT „P= „;INT((PN1)*1000)/1000;
110: PRINT „p= „;INT((PN)*1000)/1000
120: GOTO 20

