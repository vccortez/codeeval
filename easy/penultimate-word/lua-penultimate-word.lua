for line in io.lines(arg[1]) do
  local tb = {}
  for w in line:gmatch("%w+") do
    tb[#tb+1] = w
  end
  print(tb[#tb-1])
end
