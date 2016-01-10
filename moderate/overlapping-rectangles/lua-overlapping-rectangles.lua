function overlap(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
    local b = ax1 <= bx2 and ax2 >= bx1 and ay1 >= by2 and ay2 <= by1
    if b then return "True" end
    return "False"
end

for line in io.lines(arg[1]) do
    local t, str = {}, tostring(line)
    for v in string.gmatch(str, "%-?%d+") do
        table.insert(t, tonumber(v))
    end
    io.write(overlap(unpack(t))..'\n')
end