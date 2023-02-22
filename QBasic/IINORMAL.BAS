10 : CLS : PRINT "Volumenintegral IIf(x,y)dxdy der bivariaten"
15 : PRINT "Standard-Normal-Verteilungsfunktion bei r=0"
17 : PRINT "von Dietmar Schrausser, SCHRAUSSER 2014:"
20 : pi = 3.14159265#
30 : e = 2.71828182#
35 : sx = 0: sy = 0
40 : INPUT "a[x]"; a1
50 : INPUT "b[x]"; b1
60 : INPUT "a[y]"; a2
70 : INPUT "b[y]"; b2
80 : INPUT "Intervall d"; d
85 : PRINT "berechne Volmenintegral ..."
90 : FOR x = a1 TO b1 STEP d
100 : FOR y = a2 TO b2 STEP d
110 : sy = sy + d * ((1 / (2 * pi * SQR(1))) * e ^ (-(x ^ 2 + y ^ 2) / 2))
120 : NEXT y
130 : sx = sx + sy * d: sy = 0
140 : NEXT x
150 : PRINT "IIf(xy)dxdy ="; sx
155 : PRINT "_"
160 : END




