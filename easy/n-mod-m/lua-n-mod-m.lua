for line in io.lines(arg[1]) do
	local a, b = line:match('(%d+),(%d+)')
	
	io.write(a - math.floor(a/b) * b .. '\n')
end