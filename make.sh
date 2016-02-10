project="MagneticFloor_0.0.4"
mkdir $project
cp -R info.json CHANGES LICENSE README data.lua control.lua locales prototypes graphics migrations $project/
zip -r MagneticFloor_0.0.4.zip $project -x *.xcf* *.zip* *.DS_Store*
