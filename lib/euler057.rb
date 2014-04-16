# coding: utf-8
# ruby 2.0.0
#
#
# 問題を読む限り、n項に１を足して逆数にして１を足すとn+1項が出るっぽい
# 
# 3/2 → 5/2 → 2/5 → 7/5 
#
class Euler057
  class << self
    def array n
      @array ||= {}
      #memoize
      return @array[n] if @array[n]
      #漸化式1項
      return @array[n] = Rational(3,2) if n == 1
      #漸化式n項
      1/(array(n-1)+1)+1
    end
    def big_numerator? rational
      numerator,denominator = rational.to_s.split("/").map(&:size)
      numerator > denominator
    end
    def solve
      c = 0
      (1..1000).each do |n|
        c += 1 if big_numerator? array(n)
      end
      c
    end
  end
end
