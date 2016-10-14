age = 10
if age < 18
  puts "You're too young to use this system"
  puts "So we're going to exit your program now"
  exit
end

age = 10
unless age >= 18
  puts "You're too young to use this system"
  puts "So we're going to exit your program now"
  exit
end

age = 19
if age < 21
  puts "You can't drink in most of the United States"
  if age >= 18
    puts "But you can in the United Kingdom!"
  end
end

age = 10
if age < 18
  puts "You're too young to use this system" 
else
  puts "You can use this system"
end

