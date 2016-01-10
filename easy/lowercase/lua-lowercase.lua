for line in io.lines(arg[1]) do
    local ln = tostring(line)
    io.write(ln:lower()..'\n')
end