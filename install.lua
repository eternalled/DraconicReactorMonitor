-- drmon installation script
 
local libURL = "https://raw.githubusercontent.com/eternalled/DraconicReactorMonitor/master/lib/f.lua"
local startupURL = "https://raw.githubusercontent.com/eternalled/DraconicReactorMonitor/master/startup.lua"
local drmpURL = "https://raw.githubusercontent.com/eternalled/DraconicReactorMonitor/master/drmon.lua"
 
local lib, startup, drmp
local libFile, startupFile, drmpFile
 
local file1, file2, file3
 
fs.makeDir("lib")
 
lib = http.get(libURL)
libFile = lib.readAll()
 
--Get library files
file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()
 
--Startup Script
startup = http.get(startupURL)
startupFile = startup.readAll()
 
file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()
 
--Draconic Reactor Monitor Program
drmp = http.get(drmpURL)
drmpFile = drmp.readAll()
 
file3 = fs.open("DRMP", "w")
file3.write(drmpFile)
file3.close()
