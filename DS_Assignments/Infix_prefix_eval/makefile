OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
infix_pre_fix_eval.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
