for line in io.lines(arg[1]) do
  local lng = ''
  for w in line:gmatch('%S+') do
    if #w > #lng then
      lng = w
    end
  end
  io.write(lng..'\n')
end
