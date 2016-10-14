require 'rubygems'
require 'inline'
require 'benchmark'

class CFactorial
  class << self
    inline do |builder|
      builder.c %q{
        long factorial(int value) {
          long result = 1, i = 1;
          for (i = 1; i <= value; i++) {
            result *= i;
          }
          return result;
        }
      }
    end
  end
end

class Fixnum
  def factorial
    (1..self).inject { |a, b| a * b }
  end
end

Benchmark.bm do |bm|
  bm.report('ruby:') do
    100000.times { 8.factorial }
  end

  bm.report('c:') do
    100000.times { CFactorial.factorial(8) }
  end
end

