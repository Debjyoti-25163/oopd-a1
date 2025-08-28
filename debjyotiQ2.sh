# Compile C++ code without standard libraries
g++ -c basicIO.cpp -o basicIO.o -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -nodefaultlibs

# Assemble syscall wrapper
nasm -f elf64 syscall.S -o syscall.o

# Compile main_Q3.cpp to object file
g++ -c debjyotiQ2.cpp -o debjyotiQ2.o -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -nodefaultlibs

# Link everything together
g++ debjyotiQ2.o basicIO.o syscall.o -o debjyotiQ2 -nostdlib -nodefaultlibs -fno-exceptions -fno-rtti -fno-stack-protector