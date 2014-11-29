class Euler047
  require 'prime'
  class << self
    def solve
      (2..Float::INFINITY).each do |num|
        next unless num.prime_division.size == 4 && (num % 2).nonzero? && (num % 3).nonzero?
        array = [num]
        [num - 1, num - 2, num - 3].each do |x|
          break unless x.prime_division.size == 4
          array.unshift x
          return array.first if array.size == 4
        end
        [num + 1, num + 2, num + 3].each do |x|
          break unless x.prime_division.size == 4
          array.push x
          return array.first if array.size == 4
        end
        return array.first if array.size == 4
      end
    end
  end
end
