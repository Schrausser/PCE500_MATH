10 cls:gosub 130
20key1,""(-1)^k*(1/(2*k+1))"
30 key2,"4*FX"
40 key 3,"0"
50 key 4,"100"
60 wait0:cls:gosub180
70 key6,"sqr(1-x^2)"
80 key 7,"2*FX"
90 key8,"-1"
100key9,"1"
110key10,"1/100*100"
120 wait:print:end
130 print "        *  LEIBNITII FORMULA  *"
140 print "      "; chr$ 205
150 print CHR$176;"  = 4";chr$234+CHR$&92;"-1";chr$224;"1/2n+1 = 3.1415926535897932385"
160 print"      ";chr$193;
170 wait:print:return
180 print "        *  WEIERSTRASS' METHOD  *"
190 print "      ";chr$210
200 print " chr$176;" = 2";chr$234+chr$&D0;chr$235;"1-x";chr$195;"dx = 3.141592653589793238463"
210 print "      ";chr$ 203+chr$194;
220 return