10 cls:gosub 70
20key1,"((-1)^k/fact(2*k+1))*X^(2*k+1)"
30 key2,"FX"
40 key 3,"0"
50 key 4,"8"
60 wait:print:end
70 print "        *  SINE FUNCTION  *"
80 print "        "; chr$ 205
90 print " sin x = ";chr$92;"-1";chr$224;"/(2n+1)!";chr$234;"x";chr$195+chr$224+chr$204+chr$194
100 print"        ";chr$193;
110 return
