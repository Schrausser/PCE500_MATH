1:  REM ********************************************
2:  REM         Minderungskorrektur rTC
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

5: INPUT „rtc-> „;RTC
10: INPUT „rtt-> „;RTT
20: INPUT „rcc-> „;RCC
30: RTC1=RTC/SQR(RTT*RCC)
40: PRINT „rTC= „;RTC1
50: WAIT:PRINT:END

