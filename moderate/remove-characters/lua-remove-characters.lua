function splits(ipt, div)
    local t = {}
    for s in string.gmatch(ipt, "([^"..div.."]+)") do
        t[#t+1] = s
    end
    return t
end

for line in io.lines(arg[1]) do
    local source, del = unpack(splits(tostring(line), ","))
    del = string.sub(del, 2)
    io.write( string.gsub(source, "(["..del.."]+)", "") .. '\n' )
end