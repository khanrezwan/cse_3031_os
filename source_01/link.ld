ENTRY(loader)	/* the name of the entry label */

SECTIONS{
	. = 1M;	/* the code should be loaded at 1 MB */
	.text BLOCK(4K) : ALIGN(4K)	/* align at 4KB*/
	{
		*(.multiboot)		
		*(.text)	/* All text section from all files*/
	}
	.rodata BLOCK(4K) : ALIGN(4K)/* align at 4KB*/
	{
		*(.rodata*)	/* All read-only data section from all files*/
	}
	.data BLOCK(4K) : ALIGN(4K)/* align at 4KB*/
	{
		*(.data) /* All data section from all files*/
	}
	.bss BLOCK(4K) : ALIGN(4K)/* align at 4KB*/
	{
		*(COMMON) /* All read-only COMMON section from all files*/
		*(.bss*)	/* All bss section from all files*/
	}
	
}
