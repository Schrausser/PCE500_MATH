1:  REM ********************************************
2:  REM               PR-Tabelle 
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

5: Z=0: GOSUB 180

10: DATA „ „,“ „
12: DATA „0     0     | 50    50    1.00“
13: DATA „0.5   0.25  | 69.1  30.9  0.62“
15: DATA „1     1     | 84.1  15.9  0.32“
16: DATA „1.5   1.25  | 93.3   6.7  0.13“
19: DATA „1.65  2.71  | 95     5    0.10“
25: DATA „1.96  3.84  | 97.5   2.5  0.05“
27: DATA „2     4     | 97.7   2.3  0.05“
29: DATA „2.33  5.43  | 99     1    0.02“
32: DATA „2.58  6.66  | 99.5   0.5  0.01“
37: DATA „3     9     | 99.9   0.13 0.00“
45: DATA“,“ „,“ „,“ „,“end“
50: IF ASC INKEY$ &1 =5         THEN Z=Z+1:GOSUB 180 
55: IF ASC INKEY$ &1 =4 AND Z>0 THEN Z=Z-1:GOSUB 180 
60: GOTO 50

180: RESTORE
190: FOR J=0 to Z: READ A$: IF A$=“end“ THEN 230
195: NEXT J
196: CLS: LOCATE 0,1
200: FOR I=1 TO 4
210: READ A$: IF A$=“end“ THEN Z=Z-1: GOTO 230
215: PRINT A$
220: NEXT I
222: LOCATE 0,0: 
PRINT 
CHR$ &BA+ „z____“ +
CHR$ &B6+ 
CHR$ &C3+  „[„ +
CHR$ &D2+ „]_|_PR__100-PR___p“+
CHR$ &A1+
CHR$ &C3+ „_“
230: RETURN
