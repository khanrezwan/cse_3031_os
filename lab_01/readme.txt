nasm -f elf32  -F dwarf -g caller.s

gcc -m32 -c -g sum_of_three.c

ld -m elf_i386 caller.o sum_of_three.o -o test.elf

objdump -h  test.elf

objdump -d  test.elf
