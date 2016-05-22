#include <system.h>
#include <stdint.h>
#include <multiboot.h>

typedef struct multiboot_memory_map {
	unsigned int size;
	unsigned int base_addr_low,base_addr_high;
// You can also use: unsigned long long int base_addr; if supported.
	unsigned int length_low,length_high;
// You can also use: unsigned long long int length; if supported.
	unsigned int type;
} multiboot_memory_map_t;





int kmain()
//int kmain(multiboot_info_t* mbt, unsigned int magic)
{
	
	

	terminal_initialize();	
	//putchar ('A');
	//cls();
	int i = 123;
	printf("hello world\n hello %d",i);	
	//terminal_writestring("Hello, kernel World!\n");
	//multiboot_memory_map_t* mmap = mbt->mmap_addr;
	//while(mmap < mbt->mmap_addr + mbt->mmap_length) {
		
	//	mmap = (multiboot_memory_map_t*) ( (unsigned int)mmap + mmap->size + sizeof(unsigned int) );
	//}
	return 0xBABA;
}
