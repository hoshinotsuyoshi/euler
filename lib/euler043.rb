# coding: utf-8
class Euler043
  class << self
    def factorial(x)
      return 1 if x == -1
      return 1 if x.zero?
      (1..x).inject { |product, i|product * i }
    end

    def pandigitals(n)
      # return [123456789,123456879,...]
      @strs = []
      (0..(factorial(n + 1) - 1)).each do |m|
        cards = (0..n).to_a
        str = ''
        @digit = m
        (0..n).to_a.reverse.each do |x|
          index = (@digit / (factorial(x))).to_i
          str += cards[index].to_s
          cards.delete cards[index]
          @digit = @digit % factorial(x)
        end
        @strs << str
      end
      @strs
    end

    def has_the_feature?(x)
      (x.to_s[1, 3].to_i % 2).zero? &&
        (x.to_s[2, 3].to_i % 3).zero? &&
        (x.to_s[3, 3].to_i % 5).zero? &&
        (x.to_s[4, 3].to_i % 7).zero? &&
        (x.to_s[5, 3].to_i % 11).zero? &&
        (x.to_s[6, 3].to_i % 13).zero? &&
        (x.to_s[7, 3].to_i % 17).zero?
    end

    def solve
      pandigitals(9).select { |digit|has_the_feature? digit }.inject(0) { |sum, i| sum + i.to_i }
    end
  end
end
