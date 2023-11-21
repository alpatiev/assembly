.global start
.intel_syntax noprefix

start:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    mov     rax, 0x2000004 # MacOS write syscall 4     
    mov     rdi, 1         
    lea     rsi, [rip +.LC0] # String source
    mov     rdx, 22 # String length
    syscall

    mov     rax, 0x2000001 # MacOS write syscall 1 
    syscall

.LC0: .string "Hello, motherfvckerz!\n"


