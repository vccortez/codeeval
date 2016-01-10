for line in io.lines(arg[1]) do
	local words = {}
	for word in line:gmatch("%a+") do
		table.insert(words, word:lower())
	end
	io.write(table.concat(words, ' ') .. '\n')
end
