# coding: utf-8
# ruby 2.0.0
#
#

class Euler055
  class << self
    def reversible?(n)
      n == n.to_s.reverse.to_i
    end

    def lychrel?(n)
      @lychrels ||= {}
      return @lychrels[n] unless @lychrels[n].nil?
      c = 0
      @lychrels[n] = loop do
        c += 1
        n += n.to_s.reverse.to_i
        break false if reversible?(n)
        break true  if c == 50
      end
    end

    def solve
      c = 0
      (1..9999).to_a.reverse.each do |n|
        c += 1 if lychrel? n
      end
      c
    end
  end
end
