function s2t(s)
	local t = {}
	for i=1, #s do
		t[i] = s:sub(i,i)
	end
	return t
end

for line in io.lines(arg[1]) do
	local t = s2t(line)
	
	for i=1, #t do
		local a, c, k = t[i], 0, 1
		for b=k, #t do
			if a == t[b] then c = c+1 k = b end
		end
		if c < 2 then print(t[k]) break end
	end
end