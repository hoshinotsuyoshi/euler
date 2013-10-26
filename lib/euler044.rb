# coding: utf-8
class Euler044
  @pentagonals = []
  class << self
    def pentagonals x
      ((x*(3*x - 1))/2).to_i
    end
    def add_pentagonal
      @pentagonals << pentagonals(@pentagonals.size + 1)
    end
    def pentagonal? x
      add_pentagonal if @pentagonals.empty?
      while x > @pentagonals.last do
        add_pentagonal
      end
      !!(@pentagonals.index x)
    end
    def solve
      add_pentagonal
      @count = 1
      while @answer.nil? do
	@tmp = @pentagonals[0,@count]
	@tmp.reverse.each do |e|
	  next unless pentagonal?(@tmp.last - e)
	  next unless pentagonal?(@tmp.last + e)
	  break (@answer = @tmp.last-e)
	end
	@count += 1
      end
      @answer
    end
  end
end
