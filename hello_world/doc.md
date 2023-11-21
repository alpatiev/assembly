# Build guidelines for ARM 64 and Intel X86.
Tested on Mac M1 and Mac with Intel Core i5 respectively.

## ARM - Compile and run.
as -o main_arm.o main_arm.s && ld -macosx_version_min 13.0.0 -o main_arm main_arm.o  -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 && ./main_arm

## X86 - Compile implicitly without stdlib and run.
as -arch x86_64 -o main_x86.o main_x86.asm && gcc -o main_x86 main_x86.o -nostdlib -static && ./main_x86 
