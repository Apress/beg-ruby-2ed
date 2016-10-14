tmp_dir = '/tmp'
if ENV['OS'] =~ /Windows_NT/
  puts "This program is running under Windows NT/2000/XP!"
  tmp_dir = ENV['TMP']
elsif ENV['PATH'] =~ /\/usr/
  puts "This program has access to a UNIX-style file system!"
else
  puts "I cannot figure out what environment I'm running in!"
  exit
end

