# coding: utf-8
class Euler035
  @prime    = []
  @prime[0] = 2
  #素数
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
  def self.primes n
    array = []
    i = 0
    loop do
      break if prime(i) >= n
      array << prime(i)
      i += 1
    end
    array
  end

  def self.prime? num
    if @prime.last >= num
      @prime.include? num
    else
      prime(@prime.size)
      prime? num
    end
  end

  def self.circular? num
    @x = nil
    #2,4,6,8,0は含まない
    return false if (num.to_s.split(//).map(&:to_i) & [2,4,6,8,0]).size.nonzero?

    int = num
    (num.to_s.size-1).times do 
      #circular
      @x ||= int.to_s
      @x   = @x[-1] + @x.chop
      int = @x.to_i
      if !prime? int
        return false
      end
    end
    true
  end

  def self.solve
    c = 1 #2が巡回素数
    primes(1_000_000).each do |p|
      c += 1 if circular? p
    end
    c
  end
end
