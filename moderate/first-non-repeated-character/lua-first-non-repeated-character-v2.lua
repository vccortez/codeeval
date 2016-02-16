-- indexes the characters
function idx(str)
  local tab = {}

  for i=1, #str do
    local c = str:sub(i, i)
    tab[c] = 0
  end

  return tab
end

for line in io.lines(arg[1]) do
  local t = idx(line)

  for i=1, #line do
    local c = line:sub(i, i)

    if t[c] == 0 then
      t[c] = i
    else
      t[c] = -1
    end
  end

  local min
  for k, v in pairs(t) do
    if v > 0 and not min then
      min = v
    elseif v > 0 and min > v then
      min = v
    end
  end

  print(line:sub(min, min))
end
