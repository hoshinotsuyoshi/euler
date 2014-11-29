# coding: utf-8
# ruby 2.0.0
#

class Euler048
  class << self
    def solve
      (1..1000).inject { |sum, n|sum += (n**n) }.to_s[-10, 10].to_i
    end
  end
end
