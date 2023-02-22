
1:   REM ********************************************
2:   REM     Geometrische Wahrscheinlichkeit
3:   REM      von Dietmar Schrausser (c)2014
4:   REM ********************************************

10: CLS: PRINT „Geometrische Wahrscheinlichkeit:“
20: PG=0
30: PRINT „zu p->„;: INPUT „ „;P
50: PRINT „bei r->„;: INPUT „ „;R
60: FOR I=0 TO R-1
80: PG=PG+P*(1-P)^I
90: NEXT
100: PRINT „P= „;INT((P*(1-P)^(R-1))*1000)/1000;
110: PRINT „p= „;INT((PG)*1000)/1000
120: GOTO 20


