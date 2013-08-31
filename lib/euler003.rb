class Euler003
  @number = 600851475143
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

  def self.solve
    @answer = []
    i = 0
    loop do
      if @number%prime(i)==0
	@number = @number/prime(i) 
	@answer.push prime(i)
	break if @number == 1
	next
      else
	i += 1
      end
    end
    @answer.last
  end
end
