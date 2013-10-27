# coding: utf-8
# ruby 2.0.0
#

class Euler050
  class << self
    require 'prime'
    def consecutive_prime_sum limit
      max = 0
      max_prime = nil
      array = Prime.each(limit).to_a
      array.size.times do |index|
        ((max+1)..array.size-index-1).each do |n|
          x = array[index,n].inject(:+)
          break if x >= limit
          if x.prime? then
            max = n
            max_prime = x
          end
        end
      end
      [max,max_prime]
    end
    def solve
      consecutive_prime_sum(1_000_000).last
    end
  end
end

