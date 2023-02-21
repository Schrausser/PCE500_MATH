1:   REM *****************************************************
2:   REM   Permutationstest mP bzw. mPR via Bt zum Vektor (x)
3:   REM          von Dietmar Schrausser (c)2013
4:   REM *****************************************************
10:  CLEAR: CLS: PRINT „Permutationstest mP bzw. mPR via Bt“: PRINT „zum Vektor (x)“
20:  INPUT “bei n[x]->“; NX
30:  CLS: N=NX+NY: DIM A(N)
40:  FOR I=1 TO NX
50:  PRINT “x[“;I;“]->“;: INPUT „ „; A(I): SUM1=SUM1+A(I)
60:  NEXT I
70:  PRINT CHR$&92+“x=  „;SUM1
80:  PRINT CHR$&92+“y-> „;: INPUT „ „; SUM2: Q0=SUM1-SUM2
90:  CLS: PRINT „zu Variationszyklen M“+ CHR$&D1 +“->“;: INPUT “ “; M: CLS
100: FOR I=1 TO M
110: FOR J=1 TO NX
120: SUM1P=SUM1P+A(RND(N))
130: NEXT J
140: FOR J=1 TO NX
150: SUM2P=SUM2P+A(RND(N))
160: NEXT J
170: Q1=SUM1P-SUM2P
180: IF Q0>Q1 THEN PK=PK+1/M
190: IF Q0=Q1 THEN PP=PP+1/M
200: IF Q0<Q1 THEN PG=PG+1/M
210: SUM1P=0:SUM2P=0:Q1=0
220: LOCATE 0,0: PRINT “p[<]=“;(INT(((PK*M)/I)*1000))/1000: PRINT “p[=]=“;(INT(((PP*M)/I)*1000))/1000: PRINT “p[>]=“;(INT(((PG*M)/I)*1000))/1000: PRINT „M“+ CHR$&D1 +„-m[„;M-I;“] „
230: NEXT I
240: P2=PK+PP: IF PK>PG THEN P2=PG+PP
250: PRINT „p[<]=“;PK
260: PRINT „p[=]=“;PP
270: PRINT „p[>]=“;PG;: PRINT „  p[<>]=“;P2
280: WAIT: PRINT: END