require 'set'
class Euler062
  class << self
    def solve
      @hash = Hash.new{|h, k| h[k] = Set.new}
      value = (1..Float::INFINITY).each do |n|
        digits = (n ** 3).to_s.split(//).map(&:to_i).sort
        @hash[digits] << n
        if @hash[digits].size == 5
          break @hash[digits]
        end
      end

      value.sort.first ** 3
    end
  end
end
