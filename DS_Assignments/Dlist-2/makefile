OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
dlist2.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
