# coding: utf-8

class Array
  def **(arg)
    x = []
    each do |e|
      arg.each do |e2|
        x << e * e2
      end
    end
    x
  end
end

class Euler021
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

  def self.factors(n)
    return [1] if n == 1
    answer = []
    i = 0
    loop do
      if n % prime(i) == 0
        n = n / prime(i)
        answer.push prime(i)
        break if n == 1
        next
      else
        i += 1
      end
    end
    answer
  end

  def self.divisors(n)
    return [1] if n == 1
    hash = {}
    factors(n).each do|e|
      hash[e] ||= 0
      hash[e] += 1
    end
    answer = [1]
    hash.each do |k, v|
      answer = answer**Array.new(v + 1).map.with_index { |_e, i| k**i }
    end
    answer.delete n
    answer
  end

  def self.amicable?(n)
    return false if perfect? n
    n == divisors(divisors(n).inject(&:+)).inject(&:+)
  end

  def self.perfect?(n)
    n == divisors(n).inject(&:+)
  end

  def self.solve
    (1..9999).to_a.select { |i|amicable? i }.inject(&:+)
  end
end
