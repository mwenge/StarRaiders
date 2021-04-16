.PHONY: all clean run

XATARI_IMAGE = "bin/starraiders.xex"
XATARI = atari800

all: clean starraiders.xex run


starraiders.xex: src/starraiders.asm
	64tass -Wall -Wno-implied-reg --atari-xex -o bin/starraiders.xex -L bin/list-co1.txt -l bin/labels.txt src/starraiders.asm
	md5sum bin/starraiders.xex orig/starraiders.xex


run: starraiders.xex
	$(XATARI) -win-height 800 -win-width 1200 $(XATARI_IMAGE)

clean:
	-rm bin/starraiders.xex
	-rm bin/*.txt
