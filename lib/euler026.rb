# coding: utf-8
class Euler026
  @prime    = {}
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
  # 素数を渡すと循環数を返す
  def self.recurring(prime)
    return 0 if prime == 2
    return 0 if prime == 5
    i = 1
    loop do
      return i if ('9' * i).to_i % prime == 0
      i += 1
    end
  end
  # 素数だけ調べればよい
  def self.solve
    n     = 0
    max   = 0
    max_d = 0
    loop do
      break if prime(n) >= 1000
      if recurring(prime(n)) > max
        max   = recurring prime(n)
        max_d = prime n
      end
      n += 1
    end
    max_d
  end
end
