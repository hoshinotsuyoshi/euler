class Euler002
  @@a    = []
  @@a[0] = 1
  @@a[1] = 2
  def self.fib n
    @@a[n] ||= @@a[n-1] + @@a[n-2]
  end
  def self.solve
    i,sum = 0,0
    loop do
      sum += fib i if fib(i).even?
      i   += 1
      return sum if fib(i) >= 4_000_000
    end
  end
end
