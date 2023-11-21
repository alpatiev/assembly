.global _start         
.align 2

_start: 
// Printing block:
        mov X0, #1     // Specify 1 to output
        adr X1, OUTPUT_STRING 
        mov X2, #21     // 21 is length of our string
        mov X16, #4     // MacOS write syscall - 4
        svc 0     // syscall ..output the string

// Exit block:
        mov     X0, #0      // Return code 0
        mov     X16, #1     // 1 is terminate code
        svc     0           // syscall

// Data:
OUTPUT_STRING: .ascii  "Hello motherfvckerz!\n"
