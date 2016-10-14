require 'Win32API'

title = "My Application"
text = "Hello, world!"

Win32API.new('user32', 'MessageBox', %w{L P P L}, 'I').call(0, text, title, 0)

