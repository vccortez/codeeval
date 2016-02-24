for line in io.lines(arg[1]) do
  if #line > 0 then
    if
      not line:match("[%p%s][%p%s]")
      and line:match("^[%w_%.%+%-]+@[%w][%w]+[%.%w]*%.[%a]+$") then
      io.write('true\n')
    else
      io.write('false\n')
    end
  end
end
