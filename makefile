

nogc: scheme-nogc.c ../mmtk-scheme/build/libmmtkscheme.a
	clang scheme-nogc.c -g -O0 -I ../mmtk-scheme/scheme -L../mmtk-scheme/build/ -lmmtkscheme -lm -o nogc

#	clang -std=c99 -Wall -I../mmtk-scheme/scheme/ -c scheme-nogc.c -o scheme-nogc.o
scheme-malloc:
	cc -o scheme-malloc scheme-malloc.c


clean:
	rm -f nogc *.o scheme-malloc *~

