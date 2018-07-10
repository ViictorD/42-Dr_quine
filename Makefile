NAME = dr_quine

CC = gcc

CFLAGS = -Wall -Wextra -Werror

all: cc assembly

$(NAME):

clean:
	@ /bin/echo "Removing all asm object..."
	@ rm -f ./ASM/*.o

fclean: clean
	@ /bin/echo "Removing all binary..."
	@ rm -f ./C/Colleen
	@ rm -f ./C/Grace
	@ rm -f ./C/Sully
	@ rm -f ./C/Sully_*

	@ rm -f ./ASM/Colleen
	@ rm -f ./ASM/Grace
	@ rm -f ./ASM/Sully
	@ rm -f ./ASM/Sully_*

cc:
	@ echo "\033[32mCompiling C section...\033[0m"
	@ /bin/echo "Compiling Colleen.c..."
	@ $(CC) $(CFLAGS) -o ./C/Colleen ./C/Colleen.c
	@ /bin/echo "Compiling Grace.c..."
	@ $(CC) $(CFLAGS) -o ./C/Grace ./C/Grace.c
	@ /bin/echo "Compiling Sully.c..."
	@ $(CC) $(CFLAGS) -o ./C/Sully ./C/Sully.c

assembly:
	@ echo "\033[32mCompiling ASM section...\033[0m"
	@ /bin/echo "Compiling Colleen.s..."
	@ nasm -f macho64 ./ASM/Colleen.s -o ./ASM/Collen.o
	@ ld -lSystem -macosx_version_min 10.8 -o ./ASM/Colleen ./ASM/Collen.o
	@ /bin/echo "Compiling Grace.s..."
	@ nasm -f macho64 ./ASM/Grace.s -o ./ASM/Grace.o
	@ ld -lSystem -macosx_version_min 10.8 -o ./ASM/Grace ./ASM/Grace.o
	@ /bin/echo "Compiling Sully.s..."
	@ nasm -f macho64 ./ASM/Sully.s -o ./ASM/Sully.o
	@ ld -lSystem -macosx_version_min 10.8 -o ./ASM/Sully ./ASM/Sully.o

re: fclean all

.PHONY : all clean fclean re
