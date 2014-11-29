# coding: utf-8
class Euler020
  def self.solve
    factorial(100).to_s.split(//).map(&:to_i).inject(&:+)
  end

  private

  def self.factorial(n)
    @factorial ||= []
    @factorial[0] = 1
    if @factorial[n]
      @factorial[n]
    else
      @factorial[n] = factorial(n - 1) * n
    end
  end
end
