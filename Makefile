PROJECT := "MagneticFloor_0.1.0"

build:
	mkdir $(PROJECT)
	cp -R info.json CHANGES LICENSE README.md data.lua control.lua locale prototypes graphics migrations $(PROJECT)
	zip -r $(PROJECT).zip $(PROJECT) -x *.xcf* *.zip* *.DS_Store* *.kra*

clean:
	rm -r $(PROJECT)
	rm -r $(PROJECT).zip

copy:
	cp $(PROJECT).zip ~/Library/Application\ Support/factorio/mods/

cycle:
	make build
	make copy
	make clean
