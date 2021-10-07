RGBDS_PATH:=~/Projects/rgbds
PROJECT:=projects/hw

default:
	# compile 
	$(RGBDS_PATH)/rgbasm -ilib $(PROJECT)/main.z80 -o ./rom.rgb
	# link 
	$(RGBDS_PATH)/rgblink ./rom.rgb -o ./rom.gb
	# clean 
	rm -rf rom.rgb 

run:
	sameboy ./rom.gb

clean:
	rm -rf rom.gb 
	