function fsize(file)
    local size = file:seek('end')
    return size
end

local f = io.open(arg[1], 'r')
if f ~= nil then
    io.write(fsize(f) .. '\n')
    io.close(f)
end