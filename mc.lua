local h = 20
local w = 25
local p = '\27[3'

for i = 0, h do
        local s, sp = {}, ""
        for j = 0, w - i do
                sp = sp .. ' '
        end
        for k = 0, i do
                table.insert(
                        s,
                        '\27[3' .. tostring(k%9 + 1) .. ';4' .. tostring((k+5)%9 + 1) .. ';5m*\27[0m'
                )
        end
        local s1 = table.concat(s)
        local s2 = ""
        for i = #s, 1, -1 do
                s2 = s2 .. s[i]
        end
        print(sp .. s1 .. s2)
        --print(p .. tostring(c%9 + 1) .. 'm' .. sp .. s .. s)
end

local s, sp = "", ""
for i = 0, w - 4 do
        sp = sp .. ' '
end

s = '++  ++'

for i = 0, h/2 do
        print(sp .. '||' .. p .. tostring(i%9 + 1) .. ';46' .. tostring((i+5)%9 + 1) .. ';5m' .. s .. '\27[0m||')
end
