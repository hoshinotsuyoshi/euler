# coding: utf-8
class Euler042
  require 'open-uri'
  require 'csv'
  Words = CSV.open(open("https://projecteuler.net/project/resources/p042_words.txt")).to_a.first
  @triangles = [1]
  class << self
    def triangle x
      ((0.5) * x *(x+1)).to_i
    end
    def add_triangle
      @triangles.push triangle(@triangles.size + 1)
    end
    def triangle? x
      return true if @triangles.index x
      while x > @triangles.last do
	add_triangle
      end
      !!(@triangles.index x)
    end
    def position a
      ("A".."Z").to_a.index(a.to_s.upcase)+1
    end
    def word_value word
      word.split(//).inject(0){|sum,alpha|sum+position(alpha)}
    end
    def solve
      Words.select{|word|triangle? word_value(word)}.size
    end
  end
end

