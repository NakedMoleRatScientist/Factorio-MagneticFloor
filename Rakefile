require "json"

file = File.read("info.json")
info = JSON.load(file)
PROJECT = info["name"] + "_" + info["version"]

task :clean do |t|
  sh "rm -r " + PROJECT
  sh "rm -r " + PROJECT + ".zip"
end

task :build do |t|
  json = "info.json"
  plain = "CHANGES LICENSE README.md TODO.md"
  lua = "data.lua control.lua"
  directories = "locale prototypes graphics migrations stdlib"
  list = [json,plain,lua,directories,PROJECT].join(" ")
	sh "mkdir " + PROJECT
  sh "cp -r " + list
  sh "zip -r " + PROJECT + ".zip " + PROJECT + " -x *.xcf* *.zip* *.DS_Store* *.kra*"
end

task :copy do |t|
  sh "cp " + PROJECT + ".zip ~/Library/Application\\ Support/factorio/dev_mods/"
end

task :cycle => [:build,:copy,:clean]

task :symlink do |t|
  sh "rm -rf " + "~/Library/Application\\ Support/factorio/dev_mods/"
  destination = "~/Library/Application\\ Support/factorio/dev_mods/" + PROJECT
  source = "~/projects/MagneticFloor"
  sh ["ln -s",source, destination].join(" ")
end
