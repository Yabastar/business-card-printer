math.randomseed(tonumber(tostring(os.clock()*os.time()):reverse():sub(1, 9)))

local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

while i < 10 then do
  i = i + 1
  print(uuid())
end
