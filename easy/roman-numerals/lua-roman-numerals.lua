function getRoman(v, l)
	local s, m, b
	
	if l == 1 then s, m, b = 'I', 'V', 'X'
	elseif l == 2 then s, m, b = 'X', 'L', 'C'
	elseif l == 3 then s, m, b = 'C', 'D', 'M'
	else s = 'M' end
	
	if v == '0' then return ''
	elseif v == '1' then return s
	elseif v == '2' then return s..s
	elseif v == '3' then return s..s..s
	elseif v == '4' then return s..m
	elseif v == '5' then return m
	elseif v == '6' then return m..s
	elseif v == '7' then return m..s..s
	elseif v == '8' then return m..s..s..s
	elseif v == '9' then return s..b end
end
-- I, V, X, L, C, D, and M
for line in io.lines(arg[1]) do
	local j = 1
	for i = #line, 1, -1 do
		local n = line:sub(j, j)
		io.write(getRoman(n, i))
		j = j+1
	end
	io.write('\n')
end