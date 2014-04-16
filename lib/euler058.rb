# coding: utf-8
# ruby 2.0.0
#
require 'prime'

class Euler058
  class << self
    def f(n)
      @@f ||= {}
      @@f[1] ||= {primes: 0, count: 1, rate: 0/1}
      return @@f[n] if @@f[n]
      #use n,e,w,s
      primes = f(n-1)[:primes]
      ws = (2*n-1)**2
      es = ws-2*(n-1)
      primes += 1 if es.prime?
      en = es-2*(n-1)
      primes += 1 if en.prime?
      wn = en-2*(n-1)
      primes += 1 if wn.prime?
      count = (n-1)*4+1
      @@f[n] = {primes: primes, count: count, rate: primes/(count.to_f)}
    end
    def solve
      (2..1.0/0).each do |x|
        break 2*x - 1 if f(x)[:rate] < 0.1
      end
    end
  end
end
