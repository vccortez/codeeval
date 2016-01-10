for line in io.lines(arg[1]) do
	local uc, lc = 0, 0
	for l in line:gmatch('.') do
		if l:byte() >= 65 and l:byte() <= 91 then
			uc = uc + 1
		elseif l:byte() >= 97 and l:byte() <= 122 then
			lc = lc + 1
		end
	end
	
	io.write(string.format('lowercase: %.2f uppercase: %.2f\n', lc/#line * 100, uc/#line * 100))
end