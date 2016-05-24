OBJECTS=loader.o kmain.o
CC=gcc
#CFLAGS=-m32 -nostdlib -nostdinc -fno-builtin -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -Werror -c -ggdb
CFLAGS=-m32 -std=gnu99 -ffreestanding -Wall -Wextra -Werror -I./include -c -ggdb
LDFLAGS=-Tlink.ld -melf_i386
AS=nasm
ASFLAGS=-felf -Fdwarf -g

all: kernel.elf
	
kernel.elf: $(OBJECTS)
	ld $(LDFLAGS) $(OBJECTS) -o kernel.elf

os.iso: kernel.elf
	cp kernel.elf iso/boot/kernel.elf
	cp stage2_eltorito iso/boot/grub/stage2_eltorito
	genisoimage -R -b boot/grub/stage2_eltorito -no-emul-boot -boot-load-size 4 -A os -input-charset utf8 -quiet -boot-info-table -o os.iso iso

run: os.iso
	bochs -f bochsrc.txt -q
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -rf *.o kernel.elf os.iso
