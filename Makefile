all : sum_test

sum_test : sum.o main.o
	gcc -c -o sum_calc sum.o main.o

sum.o : sum.c sum.h
	gcc -c -o sum.o sum.c

main.o : main.c sum.h
	gcc -c -o main.o main.c

clean :
	rm -f *.o sum_test
