# coding: utf-8
class Euler010
  @prime    = {}
  @prime[0] = 2
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
  def self.solve
    i, sum = 0, 0
    while prime(i) <= 2_000_000
      sum += prime(i)
      i += 1
    end
    sum
  end
end
