#g++ -c basicIO.cpp -o basicIO.o
#g++ debjyotiQ3.cpp basicIO.o syscall.o -o debjyotiQ3 -nostdlib -nodefaultlibs -fno-exceptions -fno-rtti

g++ -c basicIO.cpp -o basicIO.o -fno-stack-protector
g++ debjyotiQ3.cpp basicIO.o syscall.o -o debjyotiQ3 \
    -nostdlib -nodefaultlibs -fno-exceptions -fno-rtti -fno-stack-protector
