function permute(st)
	if type(st)=='string' and #st <= 1 then return {st} end

	local pms, charizard, result = permute(st:sub(2)), st:sub(1,1), {}
	
	for jk, pstring in ipairs(pms) do
		for i=0, #pstring do
			table.insert(result, pstring:sub(1,i)..charizard..pstring:sub(i+1,-1))
		end
	end
	
	return result
end

for line in io.lines('input.txt') do
	local tabl = permute(line)
	--table.sort(tabl)
	
	for i=1, #tabl do
		io.write(tabl[i])
		if i<#tabl then io.write(',') end
	end
	io.write('\n')
end