# Build guideline ARM 64.
Tested on mac M1.

## 1.
as -o main.o main.s

## 2.
ld -macosx_version_min 13.0.0 -o main main.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

## 3.
./main

## Compile and run.
as -o main.o main.s && ld -macosx_version_min 13.0.0 -o main main.o  -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 && ./main
