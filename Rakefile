PROJECT = "MagneticFloor_0.1.4"

task :clean do |t|
  sh "rm -r " + PROJECT
  sh "rm -r " + PROJECT + ".zip"
end

task :build do |t|
	sh "mkdir " + PROJECT
  sh "cp -r " + "info.json CHANGES LICENSE README.md stdlib data.lua gui.lua control.lua locale prototypes graphics migrations " + PROJECT
  sh "zip -r " + PROJECT + ".zip " + PROJECT + " -x *.xcf* *.zip* *.DS_Store* *.kra*"
