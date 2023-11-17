local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

term.clear()

if not fs.exists("versions.lua") then
    term.setCursorPos(1,1)
    write("Verziókezelö nem elérhetö")
    sleep(0.5)
    term.setCursorPos(1,2)
    write("Letöltés...")
    local verlua = io.open("versions.lua","w+")
    local file = http.get(baseUrl .. "versions.lua")
    if file then
        local content = file.readAll()
        file.close()
        verlua:write(content)
        verlua:close()
        term.setCursorPos(1,3)
        write("Letöltés sikeres")
    end
end

local ver = require("versions")
if ver then
    term.clear()
    term.setCursorPos(1,1)
    write("Ampix Builders Scripts v" .. ver.updater)
    term.setCursorPos(1,2)
    write("Betöltés...")
    term.setCursorPos(1,3)
else
    write("Verzió lekérés sikertelen, kérlek fordulj a készítöhöz!")
end