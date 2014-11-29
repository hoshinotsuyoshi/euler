# coding: utf-8
# ruby 2.0.0
#
module FixnumRefine
  refine Fixnum do
    def sum_of_a_prime_and_twice_a_square?
      n = 1
      while 2 * n * n < self
        return true if (self - 2 * n * n).prime?
        n += 1
      end
      false
    end
  end
end

using FixnumRefine
class Euler046
  require 'prime'
  class << self
    def solve
      (2..Float::INFINITY).each do |e|
        next if e.even?
        next if e.prime?
        break e unless e.sum_of_a_prime_and_twice_a_square?
      end
    end
  end
end
