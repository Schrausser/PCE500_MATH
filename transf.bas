
1:   REM ********************************************
2:   REM        Kennwert-Transformationen
3:   REM      von Dietmar Schrausser (c)2013
4:   REM ********************************************

10:  CLEAR
20:  INPUT „x-> „;X
30:  INPUT „bei s[x]-> „;SX
40:  PRINT „mit [„+CHR$191+“]->“;:INPUT“ „;AM
50:  Z=(X-AM)/SX
60:  PRINT „z= „;z
70:  WAIT: PRINT: END

10:  INPUT „z-> „;Z
20:  PRINT „bei [„+CHR$191+“]->“;:INPUT“ „;AM
30:  INPUT „mit s[x]-> „;SX
40:  Z=AM+Z*SX
50:  PRINT „x= „;X
60:  WAIT: PRINT: END

10:  INPUT „s[x]-> „;S
20:  INPUT „bei n[x]-> „;NX
30:  SG=S+SQR(NX/(NX-1))
40:  PRINT CHR$178+“’[x]= “;SG
50:  WAIT: PRINT: END

10:  PRINT CHR$178+“’“+ CHR$&C3+„[x]->“;:INPUT „ „;S2
20:  INPUT „bei n[x]-> „;N
30:  S=SQR(S2/(N/(N-1)))
50:  PRINT „s[x]= „;S

