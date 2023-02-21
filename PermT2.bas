1:   REM *****************************************************
2:   REM        Permutationstest mP bzw. mPR via Bt 
3:   REM               zur Matrix (X)=(x|g)
4:   REM          von Dietmar Schrausser (c)2013
5:   REM *****************************************************
10:  CLEAR: CLS: PRINT „Permutationstest mP bzw. mPR via Bt“: PRINT „zur Matrix (X)=(x|g)“
20:  INPUT “bei n[1]->“; NX
30:  INPUT “und n[2]->“; NY
40:  CLS: N=NX+NY: DIM A(N)
50:  FOR I=1 TO NX
60:  PRINT “x[ 1“;I;“]->“;: INPUT „ „; A(I): SUM1=SUM1+A(I)
70:  NEXT I
80:  FOR I=NX+1 TO N
90:  PRINT “x[ 2“;I;“]->“;: INPUT „ „; A(I): SUM2=SUM2+A(I)
100: NEXT I
110: Q0=SUM1-SUM2
120: CLS: PRINT „zu Variationszyklen M“+ CHR$&D1 +“->“;: INPUT “ “; M: CLS
130: FOR I=1 TO M
140: FOR J=1 TO NX
150: SUM1P=SUM1P+A(RND(N))
160: NEXT J
170: FOR J=NX+1 TO N
180: SUM2P=SUM2P+A(RND(N))
190: NEXT J
200: Q1=SUM1P-SUM2P
210: IF Q0<Q1 THEN PK=PK+1/M
220: IF Q0=Q1 THEN PP=PP+1/M
230: IF Q0>Q1 THEN PG=PG+1/M
240: SUM1P=0:SUM2P=0:Q1=0
250: LOCATE 0,0: PRINT “p[<]=“;(INT(((PK*M)/I)*1000))/1000: PRINT “p[=]=“;(INT(((PP*M)/I)*1000))/1000: PRINT “p[>]=“;(INT(((PG*M)/I)*1000))/1000: PRINT „M“+ CHR$&D1 +„-m[„;M-I;“] „
260: NEXT I
270: P2=PK+PP: IF PK>PG THEN P2=PG+PP
280: PRINT „p[<]=“;PK
290: PRINT „p[=]=“;PP
300: PRINT „p[>]=“;PG;: PRINT „  p[<>]=“;P2
310: WAIT: PRINT: END