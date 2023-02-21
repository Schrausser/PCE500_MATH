
1:   REM ********************************************
2:   REM             Spearman-Brown rtt
3:   REM      von Dietmar Schrausser (c)2014
4:   REM ********************************************

10: INPUT „bei r12-> „;R12
20: RSB=(2*R12)/(1+R12)
30: PRINT „Spearman-Brown rtt-> „; INT(RSB*1000)/1000
40: WAIT:PRINT:END

