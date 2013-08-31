# coding: utf-8
class Euler012
  @prime    = {}
  @prime[0] = 2
  def self.prime n
    if !@prime[n] 
      #差が大きいときはいったん半分まで計算する
      prime(n/2) if n-(@prime.size) >= 1000
      x  = prime(n-1)
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

  def self.factors n
    answer = []
    i = 0
    loop do
      if n%prime(i)==0
	n = n/prime(i) 
	answer.push prime(i)
	break if n == 1
	next
      else
	i += 1
      end
    end
    answer
  end
 
  def self.divisors_size n
    hash = {}
    factors(n).each{|e|
      hash[e] ||= 0
      hash[e] += 1
    }
  hash.values.map{|e|e+1}.inject{|product,i|product*i}-1
  end
  def self.solve
     t = 3
     c = 3
     loop do
       t += c
       break t if divisors_size(t) > 500
       c += 1
     end
  end
end
