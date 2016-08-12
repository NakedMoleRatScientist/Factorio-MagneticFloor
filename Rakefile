PROJECT = "MagneticFloor_0.1.4"

task :clean do |t|
  sh "rm -r " + PROJECT
  sh "rm -r " + PROJECT + ".zip"
end

task :build do |t|
  json = "info.json"
  plain = "CHANGES LICENSE README.md TODO.md"
  lua = "data.lua gui.lua control.lua test.lua"
  directories = "locale prototypes graphics migrations stdlib"
	sh "mkdir " + PROJECT
  sh "cp -r " + [json,plain,lua,directories].join(" ") + PROJECT
  sh "zip -r " + PROJECT + ".zip " + PROJECT + " -x *.xcf* *.zip* *.DS_Store* *.kra*"
end
