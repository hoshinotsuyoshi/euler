# coding: utf-8
class Euler027
  @prime    = []
  @prime[0] = 2
  # 素数
  def self.prime(n)
    if !@prime[n]
      # 差が大きいときはいったん半分まで計算する
      prime(n / 2) if n - (@prime.size) >= 1000
      x  = prime(n - 1)
      loop do
        x += 1
        k = 0
        x_is_prime = loop do
          break true  if x**(0.5) < prime(k)
          break false if x % prime(k) == 0
          k += 1
        end
        break if x_is_prime
      end
      @prime[n] = x
    else
      @prime[n]
    end
  end
  def self.primes(n)
    array = []
    i = 0
    loop do
      break if prime(i) >= n
      array << prime(i)
      i += 1
    end
    array
  end

  def self.prime?(num)
    if @prime.last >= num
      @prime.include? num
    else
      prime(@prime.size)
      prime? num
    end
  end

  def self.solve
    max   = 0
    max_a = 0
    max_b = 0
    primes(1000).each do |b|
      (-1000..1000).each do |a|
        x = 0
        loop do
          break unless prime?(x**2 + x * a + b)
          x += 1
        end
        if max < x
          max = x
          max_a = a
          max_b = b
        end
      end
    end
    max_a * max_b
  end
end
