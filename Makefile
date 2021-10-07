default:
	# remove macros
	python3 tools/macroize.py m_gb_rom_header.z80 > output.z80
	# compile 
	~/Projects/rgbds/rgbasm output.z80 -o ./rom.rgb
	# link 
	~/Projects/rgbds/rgblink ./rom.rgb -o ./rom.gb
	# clean 
	rm -rf output.z80 rom.rgb 

run:
	sameboy ./rom.gb

clean:
	rm -rf rom.gb rom.lst output.z80
	