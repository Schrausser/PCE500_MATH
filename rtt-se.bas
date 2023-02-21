1:  REM ********************************************
2:  REM  Vorhersagefehler und Konfidenzintervall CI
3:  REM      von Dietmar Schrausser (c)2013
4:  REM ********************************************
5: CLS: PRINT „Vorhersagefehler se“
10: INPUT „bei rtt->“;RTT
20: SE=SQR(1-RTT)
30: PRINT „se= „; INT(SE*1000)/1000
40: INPUT „zu  y[x]->“;Y
50: INPUT „mit s[y]->“;SY
60: INPUT „bei z[crit]->“;Z
70: CI=INT((SE*SY*Z)*1000)/1000
80: CIU=Y-CI: CIO=Y+CI
90: PRINT „CI[„;CHR$&CE;CI;“]=“;CIU;“<“;CIO;
100:WAIT: PRINT: END