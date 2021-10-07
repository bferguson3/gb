PROJECT=sabersaga

default:
	sdcc -mgbz80 --code-loc 0x200 --data-loc 0xf000 --no-std-crt0 $(PROJECT)/main.c -o build/
	python3 tools/hex2bin.py build/main.ihx build/main.bin
	cat header.gb build/main.bin > out.gb 

header:
	~/Projects/rgbds/rgbasm src/romheader.z80 -o header.bin 
	~/Projects/rgbds/rgblink ./header.bin -o header.gb 
	truncate header.gb --size=512
	rm -rf header.bin 

run:
	sameboy ./out.gb

clean:
	rm -rf ./build/*
	rm -rf out.gb 