OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
slist1.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
