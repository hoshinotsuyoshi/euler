# coding: utf-8
# ruby 2.0.0
#
=begin
12345から3つ選ぶ選び方は10通りである.
123, 124, 125, 134, 135, 145, 234, 235, 245, 345.
組み合わせでは, 以下の記法を用いてこのことを表す: 5C3 = 10.
一般に, r ≤ n について nCr = n!/(r!(n-r)!) である. ここで, n! = n×(n−1)×...×3×2×1, 0! = 1 と階乗を定義する.
n = 23 になるまで, これらの値が100万を超えることはない: 23C10 = 1144066.
1 ≤ n ≤ 100 について, 100万を超える nCr は何通りあるか?
=end

class Euler053
  class << self
    #階乗
    def fact(n)
      @fact ||= {0=>1,1=>1} 
      return @fact[n] if @fact[n]
      @fact[n] = fact(n-1) * n
    end

    def solve
      count= 0
      (23..100).each do |n|
        (1..n).each do |r|
          if fact(n)/(fact(r)*fact(n-r)) > 1_000_000
            break count += n-2*r+1
          end
        end
      end
      count
    end
  end
end
