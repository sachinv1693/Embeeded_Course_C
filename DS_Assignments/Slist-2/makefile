OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
slist2.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
