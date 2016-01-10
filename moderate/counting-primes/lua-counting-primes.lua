function isPrime(n)
  local sq = math.floor(math.sqrt(n))
  if sq > 1 then
    for i = 2, sq do
      if n%i == 0 then return false end
    end
  end
  return true
end

for line in io.lines(arg[1]) do
  line = tostring(line)
  local t, n = {}, 0
  for v in string.gmatch(line, "%d+") do
    t[#t+1] = tonumber(v)
  end

  for i=t[1], t[2] do
    if isPrime(i) then n = n + 1 end
  end
  io.write(n .. '\n')
end
