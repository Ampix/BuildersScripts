local baseUrl = "https://raw.githubusercontent.com/Ampix/BuildersScripts/master/"

local function check()
    if fs.exists("ampix") and fs.isDir("ampix") then
        term.clear()
        write("Minden pacek")
    else
        fs.makeDir("ampix")
    end
end


term.clear()
term.setCursorPos(1,1)
write("Ampix Builders Scripts")
sleep(1)

check()