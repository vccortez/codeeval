local isPrime, prilindrome
for i = 2, 999 do
  local sqr = math.floor(math.sqrt(i))
  isPrime = true
  if sqr > 1 then
    for j = 2, sqr do
      if i%j == 0 then isPrime = false break end
    end
  end
  if isPrime then
    if (i > 99) and math.floor(i / 100) == i % 10 then
      prilindrome = i
    end
  end
end
print(prilindrome)
