for line in io.lines(arg[1]) do
  for word in line:gmatch('%S+%s?') do
    local c = word:byte(1)
    if c > 96 and c < 123 then
      io.write(string.char(c-32)..word:sub(2))
    else
      io.write(word)
    end
  end
  io.write('\n')
end
