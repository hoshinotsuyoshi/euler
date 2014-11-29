# coding: utf-8
class Euler028
  def self.spiral(n)
    @spiral    ||= []
    @spiral[0] ||= 1
    if @spiral[n]
      @spiral[n]
    else
      x = 2 * n + 1
      spiral(n - 1) + (x**2) * 4 - 6 * (x - 1)
    end
  end
  def self.solve
    spiral 500
  end
end
