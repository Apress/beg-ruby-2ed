require 'profiler'

Profiler__::start_profile

100000.times do
  rand(1000)
end

Profiler__::stop_profile

Profiler__::print_profile($stdout)