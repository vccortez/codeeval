for line in io.lines(arg[1]) do
    local str = tostring(line)
    t = {}
    
    local v = string.match(str, "%d+")
    for j=0, #v-1 do
        t[j] = 0
    end
    
    for tk in string.gmatch(v, "%d") do
        local j = tonumber(tk)
        if t[j] ~= nil then t[j] = t[j] + 1 end
    end
    
    local cmp = ""
    for j=0, #v-1 do
        cmp = cmp..t[j]
        if j==#v-1 then
            if cmp == v then io.write(1 ..'\n') else io.write(0 ..'\n') end
        end
    end
end