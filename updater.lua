local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

term.clear()
local verlua = io.open("ampix/versions.lua","w+")
local file = http.get(baseUrl .. "versions.lua")
if file then
    local content = file.readAll()
    file.close()
    verlua:write(content)
    verlua:close()
end

local ver = require("ampix/versions")
if ver then
    term.clear()
    term.setCursorPos(1,1)
    sleep(1)
    write("Ampix Builders Scripts v" .. ver.updater)
    term.setCursorPos(1,2)
    sleep(2)
    write("Betöltés...")
    term.setCursorPos(1,3)
    sleep(2)
else
    write("Verzió lekérés sikertelen, kérlek fordulj a készítöhöz!")
end