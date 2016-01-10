function toDecimal(h)
	local sum, sz = 0, #h
	
	for i = sz, 1, -1 do
		local c = h:sub(i,i):byte()
		
		if c >= 97 and c <= 102 then
			c = c - 87
		else
			c = c - 48
		end
		
		sum = sum + (c * (16^(sz-i)))
	end
	
	return sum
end

for line in io.lines(arg[1]) do
	io.write(toDecimal(line) .. '\n')
end