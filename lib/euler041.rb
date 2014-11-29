# coding: utf-8
class Euler041
  require 'prime'
  def self.factorial(x)
    return 1 if x.zero?
    (1..x).inject { |product, i|product * i }
  end
  def self.odd_and_not_five_pandigitals(n)
    # return [123456789,123456879,...]
    @strs = []
    (0..(factorial(n) - 1)).each do |m|
      cards = (1..n).to_a
      str = ''
      @digit = m
      (1..n).to_a.reverse.each do |x|
        index = (@digit / (factorial(x - 1))).to_i
        str += cards[index].to_s
        cards.delete cards[index]
        @digit = @digit % factorial(x - 1)
      end
      @strs << str.to_i if str[-1].to_i.odd? && str[-1].to_i != 5
    end
    @strs
  end
  def self.solve
    (1..9).to_a.reverse.each do |n|
      ans = nil
      odd_and_not_five_pandigitals(n).reverse.each do |p|
        return ans = p if p.prime?
      end
      return ans if ans
    end
  end
end
