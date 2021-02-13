OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
calc.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
