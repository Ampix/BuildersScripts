local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

local function checkDir()
    if fs.exists("ampix") and fs.isDir("ampix") then
        local verlua = io.open("ampix/updater.lua","w+")
        local file = http.get(baseUrl .. "updater.lua")
        if file then
            local content = file.readAll()
            file.close()
            verlua:write(content)
            verlua:close()
            shell.execute("ampix/updater")
        end
    else
        fs.makeDir("ampix")
        checkDir()
    end
end


term.clear()
term.setCursorPos(1,1)
write("Ampix Builders Scripts Loader")
sleep(1)
checkDir()