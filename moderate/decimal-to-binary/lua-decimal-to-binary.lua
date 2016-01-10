for line in io.lines(arg[1]) do
    if #(tostring(line)) > 0 then
        n = tonumber(line)
        str = ""
        while math.floor(n/2) > 0 do
            str = str..n%2
            n = math.floor(n/2)
        end
        str = str..n
        print(string.reverse(str))
    end
end