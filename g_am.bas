1:   REM ********************************************
2:   REM           Gewichtetes AM
3:   REM      von Dietmar Schrausser (c)2013
4:   REM ********************************************

5:  CLEAR
10: PRINT „k[„+CHR$ 191+“]->“;: INPUT „ “; K
20: FOR I=1 TO K
30: PRINT CHR$ 191+“[„;I;“]->“;: INPUT „ “; AM
40: PRINT „n[„;I;“]->“;: INPUT „ „; NX
50: N=N+NX: AMG=AMG+AM*NX
60: NEXT I
70: PRINT CHR$ 191+“’[„+CHR$ 191+“]= “;INT((AMG/N)*1000)/1000
80: WAIT:PRINT:END

