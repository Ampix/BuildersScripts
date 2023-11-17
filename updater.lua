local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

if(fs.exists("versions.lua") == false) then
    write("Verziókezelő nem elérhető")
    commands.exec("wget '"..baseUrl.."versions.lua' versions.lua")
end

local ver = require("updater")

write("Ampix Builders Scripts v" .. ver.updater)