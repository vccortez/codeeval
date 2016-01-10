function splits(ipt, div)
  local t = {}
  for s in string.gmatch(ipt, "([^"..div.."]+)") do
    t[#t+1] = s
  end
  return t
end

function vpairs(t, dir)
  -- keys
  local keys = {}
  for k in pairs(t) do keys[#keys+1] = k end

  -- ascending/descending order by value
  if dir and dir<0 then
    table.sort(keys, function(a,b) return t[a] < t[b] end)		
  else
    table.sort(keys, function(a,b) return t[b] < t[a] end)
  end

  -- iterator
  local i = 0
  return function()
    i = i + 1
    if keys[i] then return keys[i], t[keys[i]] end
  end
end

for line in io.lines(arg[1]) do
  local distance
  local city, tb = {}, splits(line, ';')

  for i=1, #tb do
    distance = tb[i]:match('%d+')
    city[#city+1] = tonumber(distance)
  end

  local sp, it = 0, 1
  for k,v in vpairs(city, -1) do
    io.write(v-sp)
    sp = v
    if it<#city then io.write(',') end
    it = it+1
  end

  io.write('\n')
end
