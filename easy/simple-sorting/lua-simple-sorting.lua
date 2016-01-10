for line in io.lines(arg[1]) do
    line = tostring(line)
    local t = {}
    for v in string.gmatch(line, "-?%d+.%d+") do
        t[#t + 1] = tonumber(v)
    end
    table.sort(t)
    for i=1, #t do
        io.write(string.format("%.3f", t[i]))
        if i ~= #t then io.write(' ') end
    end
    io.write('\n')
end