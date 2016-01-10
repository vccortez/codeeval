for line in io.lines(arg[1]) do
  local multiply = {}
  for n in line:gmatch('%d+') do
    table.insert(multiply, tonumber(n))
  end

  local half = #multiply/2
  for i, v in ipairs(multiply) do
    if i <= half then
      io.write(v * multiply[i+half])
      if i < half then io.write(' ') end
    end
  end
  io.write('\n')
end
