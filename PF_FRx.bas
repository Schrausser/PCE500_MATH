1:  REM ********************************************
2:  REM                PF-Keys
3:  REM      von Dietmar Schrausser (c)2014
4:  REM ********************************************

10: KEY 1, „(1/(2*pi*SQR(1-R^2)))*“: REM Normalvtlg xy 1
20: KEY 2, „EXP-((1/(2*(1-R^2)))*“: REM Normalvtlg xy 2
30: KEY 3, „(X^2-2*R*X*Y+Y^2))“: REM Normalvtlg xy 3

10: KEY 1, „(1/(SQR(2*pi)))*EXP-((x^2)/2)“: REM Normalvtlg
20: KEY 2, „G((n+1)/2)/G(n/2)*(n*pi)^-0.5“: REM t 1
30: KEY 3, „*(1+(x^2/n))^-((n+1)/2)“: REM t 2
40: KEY 4, „1/((2^(df /2))*[G(df/2)])“: REM Chi2 1
50: KEY 5, „*x^((df /2)-1)*EXP-(x /2)“: REM Chi2 2
60: KEY 6, „(G(n1+n2)/2)/(G(n1/2)*G(n2/2))“: REM F 1
70: KEY 7, „*(n1/n2)^(n1/2)*x^((n1/2)-1)“: REM F 2
80: KEY 8, „*(1+(n1/n2)*x)^-((n1+n2)/2)“: REM F 3

10: KEY 1, „X^(G-1)*EXP(-X)“: REM Gamma
20: KEY 2, „(EXP(-X)/X)“: REM Digamma 1
30: KEY 3, „(EXP(-X*G)/(1-EXP(-X)))“: REM Digamma 2
40: KEY 4, „(-1)^(N+1)“: REM Polygamma Vorzeichen
50: KEY 5, „(X^N*EXP(-X*G))/(1-EXP(-X))“: REM Polygamma
60: KEY 6, „1/INT(X)-1/X [I 1-oo]“: REM EULER_MASCHERONI g I 
70: KEY 7, „1/X [I 1-e]: EULER e
80: KEY 8, „FX/.8912269“: REM Fehlerfunktion 
90: KEY 9, „EXP(-X^2) [I 0-x/x-oo]“: REM Fehlerfunktion 
100: KEY 10, „SQR(LN(1/X))“: REM 

