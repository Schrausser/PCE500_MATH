
1:   REM ********************************************
2:   REM         Multiple Korrelation R
3:   REM      von Dietmar Schrausser (c)2013
4:   REM ********************************************
10:  INPUT „r1c-> „;R1C
20:  INPUT „r2c-> „;R2C
30:  INPUT „r12-> „;R12
40:  RC12=SQR((R1c^2+R2c^2-2*R12*R1C*R2C)/(1-R12^2))
50:  PRINT „Rc,12= „; INT(RC12*1000)/1000
60:  WAIT: PRINT: END

1:   REM ********************************************
2:   REM     Geschätzte Multiple Korrelation R’
3:   REM        „Schrumpfungskorrektur“ 
4:   REM      von Dietmar Schrausser (c)2013
5:   REM ********************************************
10:  INPUT „Rc,1..k-> „;R
12:  INPUT „bei k-> „;K
13:  INPUT „und n-> „;N
20:  RG2=1-(N-3)/(N-K-2)*((1-R^2)+(2/(N-K))*(1-R^2)^2)
30:  PRINT „R’c,1..“;k;“= „;INT ((SQR RG2)*1000)/1000
60:  WAIT: PRINT: END

