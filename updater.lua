local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

if(fs.exists("versions.lua") == false) then
    write("Verziókezelő nem elérhető")
    io.open("versions.lua").write(http.get(baseUrl .. "versions.lua").readAll())
end

local ver = require("updater")

write("Ampix Builders Scripts v" .. ver.updater)