function string:split(sep)
  sep = sep or "."
  local tokens, pattern = {}, string.format("[^%s]+", sep)
  for sub in self:gmatch(pattern) do table.insert(tokens, sub) end
  return tokens
end

function parse(tokens, i)
  i = i or 1
  local node = {}
  if tokens[i]:match("%d+") then
    node['type'] = 'num'
    node['value'] = tokens[i]
    node['index'] = i
  elseif tokens[i]:match("[*+/]") then
    node['type'] = 'op'
    node['value'] = tokens[i]
    node['left'] = parse(tokens, i + 1)
    node['right'] = parse(tokens, node.left.index + 1)
    node['index'] = node.right.index
  end
  return node
end

function eval(node)
  local val
  if node.type == 'num' then
    val = tonumber(node.value, 10)
  elseif node.type == 'op' then
    local left, right = eval(node.left), eval(node.right)
    if node.value == '*' then val = left * right
    elseif node.value == '/' then val = left / right
    elseif node.value == '+' then val = left + right
    end
  end
  return val
end

for line in io.lines(arg[1]) do
  local tree = parse(line:split("%s"))
  print(math.floor(eval(tree)))
end
