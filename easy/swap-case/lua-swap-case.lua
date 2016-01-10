for line in io.lines(arg[1]) do
  for p=1, #line do
    local ch
    ch = line:byte(p)
    if ch > 64 and ch < 91 then
      ch = string.lower(line:sub(p,p))
    elseif ch > 96 and ch < 123 then
      ch = string.upper(line:sub(p,p))
    else ch = line:sub(p,p) end
    io.write(ch)
  end
  io.write('\n')
end
