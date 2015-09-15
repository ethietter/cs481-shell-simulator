CC=gcc
CFLAGS=-Wall -Werror -g
RM=/bin/rm -f

simsh1: simsh1.o chop_line.o list.o
	$(CC) $(CFLAGS) -o $@ simsh1.o chop_line.o list.o

simsh2: simsh2.o chop_line.o list.o
	$(CC) $(CFLAGS) -o $@ simsh2.o chop_line.o list.o

simsh3: simsh3.o chop_line.o list.o
	$(CC) $(CFLAGS) -o $@ simsh3.o chop_line.o list.o

test: simsh3
	./simsh3

experiment: exp/test.c
	$(CC) $(CFLAGS) -o exp/$@ exp/test.c
	exp/$@

simsh1.o: simsh1.c chop_line.h
	$(CC) $(CFLAGS) -o $@ -c simsh1.c

chop_line.o: chop_line.c chop_line.h
	$(CC) $(CFLAGS) -o $@ -c chop_line.c

list.o: list.c list.h
	$(CC) $(CFLAGS) -o $@ -c list.c

testsleep: sleep.c
	$(CC) $(CFLAGS) -o $@ sleep.c

clean:
	$(RM) *.o simsh1 simsh2 simsh3 *~
