function splits(ipt, div)
  local t = {}
  for s in string.gmatch(ipt, "([^"..div.."]+)") do
    t[#t+1] = s
  end
  return t
end

for line in io.lines(arg[1]) do
  if #line > 0 then
    local tb = {}
    line = splits(line, ';')[2]
    for n in string.gmatch(line, '%d+') do
      if tb[n] == nil then tb[n] = true else print(n) break end
    end
  end
end
