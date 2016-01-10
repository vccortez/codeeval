function vpairs(t)
	-- keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end
	
	-- ascending order by value
	table.sort(keys, function(a,b) return t[b] < t[a] end)
	
	-- iterator
    local i = 0
    return function()
        i = i + 1
        if keys[i] then return keys[i], t[keys[i]] end
    end
end

for line in io.lines(arg[1]) do
	local letter = {}
	
	line = string.upper(line)
	for c = 1, #line do
		local k = string.byte(line, c)
		if k > 64 and k < 91 then
			if letter[k] then letter[k] = letter[k] + 1 else letter[k] = 1 end
		end
	end
	
	local beauty, i = 0, 0
	for k, v in vpairs(letter) do
		beauty = beauty + ((26 - i) * v)
		i = i + 1
	end
	
	io.write(beauty .. '\n')
end