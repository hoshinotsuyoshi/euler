# coding: utf-8
# ruby 2.0.0
#

class Euler052
  class << self
    def same?(array)
      one = array.shift
      array.each do |other|
        return false unless one.to_s.split(//).sort.map(&:to_i) == other.to_s.split(//).sort.map(&:to_i)
      end
      true
    end

    def solve
      (1..1 / 0.0).each do |x|
        return x if same?((1..6).map { |n|n * x })
      end
    end
  end
end
