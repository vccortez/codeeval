for line in io.lines(arg[1]) do
  line = tonumber(line)
  if line >= 0 and line < 3 then io.write("Still in Mama's arms")
  elseif line < 5 then io.write("Preschool Maniac")
  elseif line < 12 then io.write("Elementary school")
  elseif line < 15 then io.write("Middle school")
  elseif line < 19 then io.write("High school")
  elseif line < 23 then io.write("College")
  elseif line < 66 then io.write("Working for the man")
  elseif line < 101 then io.write("The Golden Years")
  else io.write("This program is for humans") end
  io.write('\n')
end
