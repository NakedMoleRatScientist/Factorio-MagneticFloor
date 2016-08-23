require "json"

file = File.read("info.json")
info = JSON.load(file)
PROJECT = info["name"] + "_" + info["version"]
GAME_DIR = "~/Library/Application\\ Support/factorio/"
DEV_DIR = GAME_DIR + "dev_mods/"

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
  test_dir = GAME_DIR + "/test_mods/"
  sh "rm -r " + test_dir
  sh "mkdir " + test_dir
  sh "cp " + PROJECT + ".zip " + test_dir
end

task :cycle => [:build,:copy,:clean]

task :symlink do |t|
  sh "rm -r " + DEV_DIR
  sh "mkdir " + DEV_DIR
  destination = DEV_DIR + PROJECT
  source = "~/projects/MagneticFloor"
  sh ["ln -s",source, destination].join(" ")
end
