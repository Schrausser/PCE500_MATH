1:  REM ********************************************
2:  REM                Skalen 
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

5: Z=0: GOSUB 180

10: DATA „ „,“ „,
“C      [5,2]   |  0<“,
“Stanine[5,1.96]|  0<9“,
„Sten   [5.5,2] |  0<10“,
„SW     [100,10]|-oo<oo“,
„IQ     [100,15]|  0<“
15: DATA
„SN     [3,-1]  |  1<5“,
„T      [50,10] |  0<100“,
„z      [0,1]   |-oo<oo“,“ „,“ „,“ „,“end“
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
222: LOCATE 0,0: PRINT „Norm___Skala___|_Bereich_“
230: RETURN
    
