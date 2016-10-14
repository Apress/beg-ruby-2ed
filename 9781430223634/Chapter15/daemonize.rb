def daemonize
  fork do
    Process.setsid
    exit if fork
    Dir.chdir('/')
    STDIN.reopen('/dev/null')
    STDOUT.reopen('/dev/null', 'a')
    STDERR.reopen('/dev/null', 'a')
    trap("TERM") { exit }
    yield
  end
end

daemonize do
  # You can do whatever you like in here and it will run in the background
  # entirely separated from the parent process.
end

puts "The daemon process has been launched!"

