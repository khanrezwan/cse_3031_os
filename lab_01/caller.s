[BITS 32]
[EXTERN sum_of_three]
global _start


  arg1 equ 1
  arg2 equ 2
  arg3 equ 3
  
  section .text:
    _start:
    push arg3
  push  arg2
    push arg1
    
    call sum_of_three
    mov eax,1            ; The system call for exit (sys_exit)
	mov ebx,0            ; Exit with return code of 0 (no error)
	int 80h
    