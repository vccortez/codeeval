local str, tab
for line in io.lines(arg[1]) do
  str = tostring(line)
  if #str ~= nil and #str > 0 then
    tab = {}
    for word in string.gmatch(str ,"%w+") do
      tab[#tab+1] = word
    end

    for i = #tab, 1, -1 do
      if i == #tab then
        io.write(tab[i])
      else
        io.write(" "..tab[i])
      end
    end
    io.write("\n")
  end
end
