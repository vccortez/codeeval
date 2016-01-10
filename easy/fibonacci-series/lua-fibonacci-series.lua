function fibs(n)
  local b, bb, nx = 1, 1, 0
  if n>0 and n<3 then
    nx = 1
  else
    for i=0, n-3 do
      nx = bb + b
      bb = b
      b = nx
    end
  end
  return nx
end

for line in io.lines(arg[1]) do
  io.write(fibs(tonumber(line)) .. '\n')
end
