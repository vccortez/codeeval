function bitcount(d)
    local b = 0
    while d > 0 do
        if (d%2) == 1 then b = b + 1 end
        d = math.floor(d/2)
    end
    return b
end

for line in io.lines(arg[1]) do
    io.write(bitcount(tonumber(line)) .. '\n')
end