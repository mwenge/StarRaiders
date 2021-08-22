.PHONY: all clean run

XATARI_IMAGE = "bin/starraiders.xex"
XATARI = atari800
DIRS=bin

all: clean starraiders.xex run


starraiders.xex: src/starraiders.asm
	$(shell mkdir -p $(DIRS))
	64tass -Wall --atari-xex -b -o bin/starraiders.xex src/starraiders.asm
	md5sum bin/starraiders.xex orig/starraiders.rom
	echo "50d3d48571d77c8f252e0c7016edba99  bin/starraiders.xex" | md5sum -c


run: starraiders.xex
	$(XATARI) -win-height 800 -win-width 1200 $(XATARI_IMAGE)

clean:
	-rm bin/starraiders.xex
	-rm bin/*.txt
