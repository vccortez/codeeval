for line in io.lines(arg[1]) do
  if #line > 55 then
    local last = line:sub(41, 41)

    line = line:sub(1, 40)

    if last ~= ' ' then
      local trim
      for i = #line, 1, -1 do
        if line:sub(i, i) == ' ' then
          trim = i
          break
        end
      end
      if trim then line = line:sub(1, trim - 1) end
    end
    line = line .. '... <Read More>'
  end
  io.write(line .. '\n')
end
