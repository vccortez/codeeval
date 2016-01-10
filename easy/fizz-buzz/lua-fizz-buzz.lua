for line in io.lines(arg[1]) do
  local args = {}

  for val in string.gmatch(line, "%d+") do
    table.insert(args, val)
  end

  for num = 1, tonumber(args[3]) do
    if num % args[1] == 0 then
      if num % args[2] == 0 then
        io.write('FB')
      else
        io.write('F')
      end
    elseif num % args[2] == 0 then
      io.write('B')
    else
      io.write(num)
    end

    if num ~= args[3] then
      io.write(' ')
    end
  end

  io.write('\n')
end
