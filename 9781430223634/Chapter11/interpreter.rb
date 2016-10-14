def code_is_safe?(code)
  code =~ /[`;*-]/ ? false : true
end

while x = gets
  x.untaint if code_is_safe?(x)
  next if x.tainted?
  puts "=> #{eval(x)}"
end

