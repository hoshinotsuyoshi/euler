# coding: utf-8
class Euler025
  def self.fib(n)
    @fib ||= {}
    @fib[1] = 1
    @fib[2] = 1
    @fib[n] ||= fib(n - 1) + fib(n - 2)
  end
  def self.solve
    n = 1
    loop do
      return n if fib(n).to_s.size == 1000
      n += 1
    end
  end
end
