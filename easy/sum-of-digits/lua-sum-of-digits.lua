for line in io.lines(arg[1]) do
    line = tostring(line)
    sum = 0
    for n in string.gmatch(line, "%d") do
        sum = tonumber(n) + sum
    end
    io.write(sum.."\n")
end