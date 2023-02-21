
1:   REM ********************************************
2:   REM         Gemittelte Korrelation
3:   REM      von Dietmar Schrausser (c)2013
4:   REM ********************************************
10:  CLEAR
20:  INPUT „k[r]-> „;k
30:  FOR I=1 to K
40:  PRINT „r[„;I;“]->“;:INPUT „“;R
50:  PRINT „n[„;I;“]->“;:INPUT „“;N
60:  GOSUB 800
70:  Z1=Z1+((N-3)*FZ)
80:  Z2=Z2+(N-3)
90:  NEXT I
100: Z=Z1/z2
110: Gosub 1000: AMR=RFZ
120: print chr$191+“[z]= „;int(z*1000)/1000
130: print chr$191+“[r]= „;int(amr*1000)/1000
140: WAIT: PRINT: END
800:  FZ=0.5*LN((1+r)/(1-r)): RETURN
1000: RFZ=(exp(2*z)-1)/(exp(2*z)+1):RETURN

