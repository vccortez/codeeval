function newSet(t, v)
	return {i = t, n = tonumber(v)}
end

moment, rows, cols = 1, {}, {}
for line in io.lines(arg[1]) do
	operation = line:match('%S+')
	
	if operation:sub(1, 1) == 'S' then
		local argx, argy = line:match('(%d+)%s(%d+)')
		if operation == 'SetCol' then
			cols[argx] = newSet(moment, argy)
		else
			rows[argx] = newSet(moment, argy)
		end
		moment = moment + 1
	else
		local m, sum, arg = moment, 0, line:match('%d+')
		if operation == 'QueryCol' then
			if cols[arg] then
				sum = cols[arg].n * 256
				m = cols[arg].i
			else m = 1 end
			
			for k, v in pairs(rows) do
				if v.i >= m then
					if cols[arg] then
						sum = (sum - cols[arg].n) + v.n
					else
						sum = sum + v.n
					end
				end
			end
		else
			if rows[arg] then
				sum = rows[arg].n * 256
				m = rows[arg].i
			else m = 1 end
			
			for k, v in pairs(cols) do
				if v.i >= m then
					if rows[arg] then
						sum = (sum - rows[arg].n) + v.n
					else
						sum = sum + v.n
					end
				end
			end
		end
		io.write(sum..'\n')
	end
end