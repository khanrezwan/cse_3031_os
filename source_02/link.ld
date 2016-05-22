ENTRY(loader)	/* the name of the entry label */

SECTIONS{
	. = 0xC0100000;	/* the code should be loaded at 1 MB */
	.text : AT(ADDR(.text) - 0xC0000000)	/* align at 4KB*/
	{
		
		*(.multiboot)	
		*(.text)	/* All text section from all files*/
		
	}
	.rodata ALIGN(4K): AT(ADDR(.rodata) - 0xC0000000)/* align at 4KB*/
	{
		*(.rodata*)	/* All read-only data section from all files*/
	}
	.data ALIGN(4K): AT(ADDR(.data) - 0xC0000000)/* align at 4KB*/
	{
		*(.data) /* All data section from all files*/
	}
	.bss ALIGN(4K): AT(ADDR(.bss) - 0xC0000000)/* align at 4KB*/
	{
		_sbss = .;
       		*(COMMON)
       		*(.bss)
       		_ebss = .;
	}
	
}
