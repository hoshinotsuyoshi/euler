# coding: utf-8
# ruby 2.0.0
#
#

class Euler056
  class << self
    def solve
      max = 0
      (1..100).each do |a|
        (1..100).each do |b|
          x = (a**b).to_s.split(//).map(&:to_i).inject(&:+)
          max = x if x > max
        end
      end
      max
    end
  end
end
