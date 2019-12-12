# kompilator c
CCOMP = gcc

# konsolidator
LOADER = gcc

# opcje optymalizacji:
# wersja do debugowania
OPT = -g -DDEBUG  -fopenmp
# wersja zoptymalizowana do mierzenia czasu
# OPT = -O3

# pliki naglowkowe
INC =

# biblioteki
LIB = -lm

# zaleznosci i komendy
openmp_petle: openmp_petle.o 
	$(LOADER) $(OPT) openmp_petle.o -o openmp_petle $(LIB)

# jak uzyskac plik openmp_petle.o ?
openmp_petle.o: openmp_petle.c
	$(CCOMP) -c $(OPT) openmp_petle.c $(INC) 
	
	
	
# zaleznosci i komendy
zad6: zad6.o 
	$(LOADER) $(OPT) zad6.o -o zad6 $(LIB)

# jak uzyskac plik zad6.o ?
zad6.o: zad6.c
	$(CCOMP) -c $(OPT) zad6.c $(INC) 

clean:
	rm -f *.o
