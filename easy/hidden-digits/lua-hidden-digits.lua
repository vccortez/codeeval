for line in io.lines(arg[1]) do
	local v = false
	for i=1, #line do
		local c = line:sub(i,i):byte()
		if c >= 97 and c <= 106 then
			v = true
			io.write(c-97)
		elseif c >= 48 and c <= 57 then
			v = true
			io.write(c-48)
		end
	end
	if v then
		io.write('\n')
	else
		io.write('NONE\n')
	end
end