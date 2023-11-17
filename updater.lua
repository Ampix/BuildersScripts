local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

if(fs.exists("versions.lua") == false) then
    write("Verziókezelő nem elérhető")
    local verlua = io.open("versions.lua","w+")
    verlua:write(http.get(baseUrl .. "versions.lua").readAll())
    verlua:close()
end

local ver = require("updater")

write("Ampix Builders Scripts v" .. ver.updater)