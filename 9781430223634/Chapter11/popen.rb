handle = IO.popen("other_program", "r+")
handle.puts "send input to other program"
handle.close_write
while line = handle.gets
  puts line
end

