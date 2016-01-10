for line in io.lines(arg[1]) do
	a = line:match('%d+.%d+')
	b = 60 * (a - math.floor(a))
	
	io.write(string.format([[%d.%02d'%02d"]], a, b, 60 * (b - math.floor(b))) .. '\n')
end