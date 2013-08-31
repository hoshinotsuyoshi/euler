class Euler005
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
  def self.lcd arrays
    answer = []
    arrays.flatten.uniq.sort.each do |element|
      answer += [element] * arrays.map{|array|array.count element}.max
    end
    answer.inject{|i,p|i*p}
  end
  def self.solve
    lcd (2..20).to_a.map{|n|factors(n)}
  end
end
