CC=gcc
FLAGS= -Wall

all: connections

connections: main.o my_mat.a
	$(CC) $(FLAGS) -o connections main.o my_mat.a 

my_mat.a: my_mat.o
	ar rcs my_mat.a my_mat.o

my_mat.o: my_mat.c my_mat.h
	$(CC) $(FLAGS) -c my_mat.c 

main.o: main.c  my_mat.h
	$(CC) $(FLAGS) -c main.c  


.PHONY: clean all

clean: 
	rm -f *.o *.a connections main
