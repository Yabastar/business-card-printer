math.randomseed(tonumber(tostring(os.clock() * os.time()):reverse():sub(1, 9)))
local random = math.random
local function uuid()
    local template = 'xxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

printer = peripheral.find("printer")

-- Using ComputerCraft's read function to get input from the user
term.write("Enter MC name: ")
username = read()

term.write("Enter Discord name: ")
discord = read()

term.write("Enter business name: ")
business = read()

printer.newPage()
printer.write("Business ID")
printer.setCursorPos(1,2)
printer.write("Official certification of")
printer.setCursorPos(1,3)
printer.write("business for MCity")
printer.setCursorPos(1,5)
printer.write("MC Username: ")
printer.setCursorPos(1,6)
printer.write(username)
printer.setCursorPos(1,8)
printer.write("Discord Username: ")
printer.setCursorPos(1,9)
printer.write(discord)
printer.setCursorPos(1,11)
printer.write("Business: ")
printer.setCursorPos(1,12)
printer.write(business)
printer.setCursorPos(1,20)
printer.write(uuid())
printer.endPage()
