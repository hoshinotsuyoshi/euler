# coding: utf-8
# ruby 2.0.0
#

require 'prime'
module IntegerRefine
  refine Array do
    def position(x)
      pos = []
      self.each_with_index do |e,i|
        pos.push i if e == x
      end
      pos
    end
    def full_combination
      ful_comb = []
      (1..size).each do |n|
        ful_comb = ful_comb + combination(n).to_a
      end
      ful_comb
    end
  end
  refine Fixnum do
    def has_replacement_prime?
      return false if self < 10
      (0..1).each do |n|
        position = to_s.chop.split(//).position(n.to_s)
        position.full_combination.each do |poses|
          c = n
          number = self.to_s
          ((n+1)..9).each do |x|
            poses.each do |pos|
              number[pos.to_i] = x.to_s
            end
            c += 1 if not number.to_i.prime?
            next if c > 2
            return true if x==9
          end
        end
      end
      return false
    end
  end
end

using IntegerRefine
class Euler051
  class << self
    def solve
      Prime.each{|p| return p if p.has_replacement_prime?}
    end
  end
end
