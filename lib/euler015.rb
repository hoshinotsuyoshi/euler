# coding: utf-8
class Euler015
  # 2*2
  # d = down,r = right
  # (r,r,d,d),(r,d,r,d),(r,d,d,r),(d,r,r,d),(d,r,d,r),(d,d,r,r)
  # の6つ。
  # 3*3の場合は(r,r,r,d,d,d),(r..,となるだろう。
  # つまり3*3の場合は 6!/3!*3! = 20
  # n*nの場合は (2n)!/(n!)^2 である。
  #

  # 階乗
  #
  def self.factorial n
    @factorial ||= []
    @factorial[0] = 1
    if @factorial[n] then
      @factorial[n]
    else
      @factorial[n] = factorial(n-1) * n
    end
  end
  def self.solve
    factorial(40)/(factorial(20)**2)
  end
end
