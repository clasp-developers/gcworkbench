

nogc: scheme-nogc.c ../mmtk-scheme/build/libmmtkscheme.a
	clang -std=c99 -Wall -I../mmtk-scheme/scheme/ -c scheme-nogc.c -o scheme-nogc.o
	clang scheme-nogc.c -I ../mmtk-scheme/scheme -L../mmtk-scheme/build/ -lmmtkscheme -o nogc

scheme-malloc:
	cc -o scheme-malloc scheme-malloc.c


clean:
	rm -f nogc *.o scheme-malloc *~

