function d2b(d)
    local b = ""
    while d > 0 do
        b = b .. (d%2)
        d = math.floor(d/2)
    end
    return b
end

for line in io.lines(arg[1]) do
    line = tostring(line)
    local t = {}
    for v in string.gmatch(line, "%d+") do
        t[#t + 1] = tonumber(v)
    end
    local bin = d2b(t[1])
    --print('Binary: '.. bin)
    --print('Bit ' .. t[2] ..':'.. string.sub(bin, t[2], t[2]))
    --print('Bit ' .. t[3] ..':'.. string.sub(bin, t[3], t[3]))
    local tst = string.sub(bin, t[2], t[2]) == string.sub(bin, t[3], t[3])
    io.write(tostring(tst) .. '\n')
end