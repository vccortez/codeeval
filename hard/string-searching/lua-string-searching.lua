function splits(ipt, div)
  local t = {}
  for s in string.gmatch(ipt, "([^"..div.."]+)") do
    t[#t+1] = s
  end
  return t
end

function whatamess(sb)
  sb = string.gsub(sb, "*", "#")
  sb = string.gsub(sb, "\\#", "@")
  sb = string.gsub(sb, "#",".-")
  sb = string.gsub(sb, "@","%%".."*")
  return sb
end

for line in io.lines(arg[1]) do
  local str, sb = unpack(splits(tostring(line), ','))
  sb = whatamess(sb)
  print(string.match(str, sb) ~= nil)
end
