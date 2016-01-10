for line in io.lines(arg[1]) do
  local line, c = line:match('(.+),(.)')
  local position

  for i = #line, 1, -1 do
    if line:sub(i, i) == c then
      position = i - 1
      break
    end
  end

  if position then
    io.write(position .. '\n')
  else
    io.write('-1\n')
  end
end
