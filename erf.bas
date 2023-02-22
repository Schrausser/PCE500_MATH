10 cls:gosub 140
20key1,"1/exp(x^2)"
30 key2,"2/sqr(pi)*FX"
40 key 3,"0"
50 key 4,"X"
55key5,"1/100*100"
60 wait0:cls:gosub190
70 key6,"1/exp(x^2)"
80 key 7,"2/sqr(pi)*FX"
90 key8,"X"
100key9,"5"
110key10,"1/100*100"
120 wait:print:end
130 print "        *  GAUSS ERROR FUNCTION  *"
140 print "              "; chr$ 226
150 print " erf(x) = 2/";chr$235+CHR$&176;chr$234+chr$&D0;"1/";chr$239;"t";chr$195;"dt."
160 print"              ";chr$193;
170 wait:print:return
180 print "        *  GAUSS ERROR FUNCTION  *"
190 print "                          ";chr$205
200 print "erfc(x) = 1-erf(x) 2/";chr$235+chr$176;chr$234+chr$&D0;"1/";chr$239;"t ";chr$195;"dt."
210 print "                           ";chr$ 226;
220 return
