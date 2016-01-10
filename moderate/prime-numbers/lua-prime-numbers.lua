function pbuff()
  local t = {}
  t[#t+1] = false
  for i=2, 997 do
    t[#t+1] = isPrime(i)
  end
  return t
end

function isPrime(n)
  if n<2 then return false end
  local sq = math.floor(math.sqrt(n))
  if sq>1 then
    for i=2, sq do
      if n%i==0 then
        return false
      end
    end
  end
  return n
end

for line in io.lines(arg[1]) do
  local tb = pbuff()
  for i=1, tonumber(line) do
    if tb[i] then
      if i>2 then io.write(',') end
      io.write(tb[i])
    end
  end
  io.write('\n')
end
