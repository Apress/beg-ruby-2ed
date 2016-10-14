require 'Win32API'

title = "My Application" 
text = "Hello, world!"

dialog = Win32API.new('user32', 'MessageBox', 'LPPL', 'I')
result = dialog.call(0, text, title, 1)

case result
  when 1:
    puts "Clicked OK"
  when 2: 
    puts "Clicked Cancel"
  else
    puts "Clicked something else!"
end

