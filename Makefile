PROJECT := "MagneticFloor_0.0.4"

build:
	mkdir $(PROJECT)
	cp -R info.json CHANGES LICENSE README data.lua control.lua locale prototypes graphics migrations $(PROJECT)
	zip -r MagneticFloor_0.0.4.zip $(PROJECT) -x *.xcf* *.zip* *.DS_Store* *.kra*

clean:
	rm -r $(PROJECT)

copy:
	cp $(PROJECT).zip ~/Library/Application\ Support/factorio/mods/

cycle:
	make build
	make copy
	make clean
