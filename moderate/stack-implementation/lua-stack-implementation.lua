function push(t, e)
  t[#t+1] = e
  return t[#t]
end

function pop(t)
  local x = t[#t]
  t[#t] = nil
  return x
end

for line in io.lines(arg[1]) do
  local tab = {}
  for i in line:gmatch('-?%d+') do
    push(tab, tonumber(i))
  end

  local i = 0
  repeat
    local c = pop(tab)
    if c then
      if i%2==0 then
        if i>0 then io.write(' ') end
        io.write(c)
      end
    end
    i = i+1
  until c == nil

  io.write('\n')
end
