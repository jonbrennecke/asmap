
# Makefile for assembly project

PROJECT = main
ARCH = i386

ASSEMBLER = nasm
ASMFLAGS = -f bin
ASMEXT = COM

LD = ld
LDFLAGS = -m elf_$(ARCH)
# LDLIBS = -lc

all:
	$(ASSEMBLER) $(ASMFLAGS) -o $(PROJECT).$(ASMEXT) $(PROJECT).asm
	# $(LD) $(LDFLAGS) -o $(PROJECT).exe $(PROJECT).bin $(LDLIBS)

clean:
	rm -f *.o *.obj *.com main main
