10 : CLEAR : CLS : PRINT "Permutationstest mP bzw. mPR via Bt zur Matrix (X)=(x|g1|g2)"
15 : PRINT "von Dietmar Schrausser, SCHRAUSSER 2013"
20 : INPUT "n[11]->"; N1
30 : INPUT "n[12]->"; N2
40 : INPUT "n[21]->"; N3
50 : INPUT "n[22]->"; N4
60 : N = N1 + N2 + N3 + N4: DIM A(N) AS DOUBLE
70 : FOR I = 1 TO N1
80 : PRINT "x[ 11"; I; "]->"; : INPUT " "; A(I): SUM1 = SUM1 + A(I)
90 : NEXT I
100 : FOR I = 1 TO N2
110 : PRINT "x[ 12"; I; "]->"; : INPUT " "; A(N1 + I): SUM2 = SUM2 + A(N1 + I)
120 : NEXT I
130 : FOR I = 1 TO N3
140 : PRINT "x[ 21"; I; "]->"; : INPUT " "; A(N1 + N2 + I): SUM3 = SUM3 + A(N1 + N2 + I)
150 : NEXT I
160 : FOR I = 1 TO N4
170 : PRINT "x[ 22"; I; "]->"; : INPUT " "; A(N1 + N2 + N3 + I): SUM4 = SUM4 + A(N1 + N2 + N3 + I)
180 : NEXT I
190 : SUM11 = SUM1 + SUM2: SUM12 = SUM3 + SUM4: SUM21 = SUM1 + SUM3: SUM22 = SUM2 + SUM4: SUMW1 = SUM1 + SUM4: SUMW2 = SUM2 + SUM3:
200 : Q0A = SUM11 - SUM12: Q0B = SUM21 - SUM22:
210 : Q0W = SUMW1 - SUMW2: REM INTERAKTIONSKENNWERT Q0
220 : PRINT "zu Variationszyklen M0->"; : INPUT " "; M
225 : RANDOMIZE TIMER: REM *************************
230 : FOR I = 1 TO M
240 : FOR J = 1 TO N1
250 : SUM1P = SUM1P + A(INT(RND * N) + 1): REM ***********
260 : NEXT J
270 : FOR J = 1 TO N2
280 : SUM2P = SUM2P + A(INT(RND * N) + 1): REM ***********
290 : NEXT J
300 : FOR J = 1 TO N3
310 : SUM3P = SUM3P + A(INT(RND * N) + 1): REM ***********
320 : NEXT J
330 : FOR J = 1 TO N4
340 : SUM4P = SUM4P + A(INT(RND * N) + 1): REM ***********
350 : NEXT J
360 : SUM11P = SUM1P + SUM2P: SUM12P = SUM3P + SUM4P: SUM21P = SUM1P + SUM3P: SUM22P = SUM2P + SUM4P: SUMW1P = SUM1P + SUM4P: SUMW2P = SUM2P + SUM3P
370 : QPA = SUM11P - SUM12P: QPB = SUM21P - SUM22P
380 : QPW = SUMW1P - SUMW2P: REM INTERAKTIONSKENNWERTE QP
390 : IF Q0A < QPA THEN PKA = PKA + 1 / M
400 : IF Q0B < QPB THEN PKB = PKB + 1 / M
410 : IF Q0W < QPW THEN PKW = PKW + 1 / M
420 : IF Q0A = QPA THEN PPA = PPA + 1 / M
430 : IF Q0B = QPB THEN PPB = PPB + 1 / M
440 : IF Q0W = QPW THEN PPW = PPW + 1 / M
450 : IF Q0A > QPA THEN PGA = PGA + 1 / M
460 : IF Q0B > QPB THEN PGB = PGB + 1 / M
470 : IF Q0W > QPW THEN PGW = PGW + 1 / M
480 : SUM1P = 0: SUM2P = 0: SUM3P = 0: SUM4P = 0
490 : REM LOCATE 0,0: PRINT "p[<]=";(INT(((PK*M)/I)*1000))/1000: PRINT "p[=]=";(INT(((PP*M)/I)*1000))/1000: PRINT "p[>]=";(INT(((PG*M)/I)*1000))/1000: PRINT "M"+ CHR$&D1 +"-m[";M-I;"] "
500 : NEXT I
510 : P2A = PKA + PPA: IF PKA > PGA THEN P2A = PGA + PPA
520 : P2B = PKB + PPB: IF PKB > PGB THEN P2B = PGB + PPB
530 : P2W = PKW + PPW: IF PKW > PGW THEN P2W = PGW + PPW
540 : PRINT "p[<]="; PKA; PKB; PKW
550 : PRINT "p[=]="; PPA; PPB; PPW
560 : PRINT "p[>]="; PGA; PGB; PGW
570 : PRINT "p[<>]="; P2A; P2B; P2W
580 : END









