local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

if fs.exists("versions.lua") == false then
    write("Verziókezelő nem elérhető")
    local verlua = io.open("versions.lua","w+")
    local file = http.get(baseUrl .. "versions.lua")
    if file then
        local content = file.readAll()
        file.close()
        verlua:write(content)
        verlua:close()
    end
end

local ver = require("updater")

write("Ampix Builders Scripts v" .. ver.updater)