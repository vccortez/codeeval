for line in io.lines(arg[1]) do
	for size = 1, #line do
		bool = false
		str = line:sub(1, size)
		for n = size + 1, #line, size do
			if line:sub(n, size + size) == str then
				bool = true
			else
				break
			end
		end
		if bool then io.write(#str) break elseif size == #line then io.write(#line) end
	end
	io.write('\n')
end