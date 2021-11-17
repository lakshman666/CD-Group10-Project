rm assembly.txt
clear
lex lexer.l
yacc -d parser.y
gcc y.tab.c lex.yy.c graph.c optimized_icg.c unoptimized_icg.c assembly.c
rm y.tab.c lex.yy.c
./a.out < group10.php
python3 optimized_icg2.py
cat assembly.txt
