for line in io.lines(arg[1]) do
    local t, str = {}, tostring(line)
    for v in string.gmatch(str, "%d+") do
        table.insert(t, v)
    end
    
    for j=1, tonumber(t[3]) do
        if j%t[1]==0 then
            if j%t[2]==0 then
                io.write('FB')
            else
                io.write('F')
            end
        elseif j%t[2]==0 then
            io.write('B')
        else
            io.write(j)
        end
        
        if j~=t[3] then io.write(" ") end
    end
    io.write("\n")
end