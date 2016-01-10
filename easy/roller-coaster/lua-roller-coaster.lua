for line in io.lines(arg[1]) do
  local case = true
  for c in line:gmatch('.') do
    if c:byte() >= 65 and c:byte() <= 91 then
      if not case then
        c = string.char(c:byte() + 32)
      end
      case = not case
    elseif c:byte() >= 97 and c:byte() <= 122 then
      if case then
        c = string.char(c:byte() - 32)
      end
      case = not case
    end
    io.write(c)
  end

  io.write('\n')
end
