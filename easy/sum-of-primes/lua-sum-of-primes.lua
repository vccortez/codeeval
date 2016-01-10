local pc, i, s = 0, 2, 0
repeat
  local isPrime, sqr = true, 0
  sqr = math.floor(math.sqrt(i))
  if sqr > 1 then
    for j = 2, sqr do
      if i%j == 0 then isPrime = false break end
    end
  end
  if isPrime then
    s = s + i
    pc = pc + 1
  end
  i = i + 1
until pc == 1000
io.write(s)
