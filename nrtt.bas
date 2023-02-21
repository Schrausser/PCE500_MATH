1:  REM ********************************************
2:  REM          Testverlängerung 
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

10: INPUT „rtc-> „; RTC
20: INPUT „rtt-> „; RTT
30: INPUT „bei items n-> „; N
40: INPUT „mit items n’-> „; N1
50: R1TC=RTC/SQR(((N*(1-RTT))/N1)+RTT)
60: PRINT „r’tc= „;INT (R1TC*1000)/1000
70: WAIT:PRINT:END

10: INPUT „rtt-> „; RTT
20: INPUT „bei items n-> „; N
30: INPUT „mit items n’-> „; N1
40: R1TT=((N1/N)*RTT)/(1+((N1/N)-1)*RTT)
50: PRINT „r’tt= „;INT (R1TT*1000)/1000
60: WAIT:PRINT:END

