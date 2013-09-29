# coding: utf-8
class Euler039
  # a^2+b^2=c^2
  # p=a+b+c
  # p <= 1000

  @count = {}
  @combi = {}
  def self.rootable? x
    (x**0.5) == (x**0.5).to_i
  end
  def self.solve
    limit = 1000
    (1..limit).each do |a|
      ((a+1)..limit).each do |b|
	break if a + b >= limit
	next if !rootable?(a**2+b**2)
	c = (a**2+b**2)**(0.5)
	c = c.to_i
	p = a + b + c
	next if p > limit
	@count[p] ||= 0
	@count[p] += 1
	@combi[p] ||= []
	@combi[p] << [a,b,c]
      end
    end
    # puts @count
    # puts @combi
    @count.sort_by{|k,v|v}.last.first
    # puts @count.sort_by{|k,v|v}.last.last
  end
end
