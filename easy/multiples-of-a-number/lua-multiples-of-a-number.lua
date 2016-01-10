local str
for line in io.lines(arg[1]) do
  str = tostring(line)
  local t = {}
  for n in string.gmatch(str, "%d+") do
    table.insert(t, n)
  end
  local i = 1
  while true do
    if (t[2] * i) >= tonumber(t[1]) then
      io.write(t[2] * i .. "\n")
      break
    else
      i = i + 1
    end
  end
end
