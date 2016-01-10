for line in io.lines(arg[1]) do
	words, numbers = line:match('(.+);(.+)')
	
	hole = 0
	tw, tn = {}, {}
	for v in words:gmatch('%S+') do
		tw[#tw+1] = v
		hole = #tw + hole
	end
	
	for v in numbers:gmatch('%S+') do
		tn[#tn+1] = tonumber(v)
	end
	
	tm = {}
	for i = 1, #tw do
		if tn[i] ~= nil then
			tm[tn[i]] = tw[i]
			hole = hole - tn[i]
		else
			tm[hole] = tw[i]
		end
	end
	
	for i, v in ipairs(tm) do
		io.write(v)
		if i < #tm then io.write(' ') end
	end
	
	io.write('\n')
end