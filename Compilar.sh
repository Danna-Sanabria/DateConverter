rm date_parser.tab* lex.yy.c converter 


bison -d date_parser.y
flex date_parser.l
gcc date_parser.tab.c lex.yy.c -o converter -lfl

./converter < input.log > output.log



