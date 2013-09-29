# coding: utf-8
class Euler040
  # チャンパーノウン定数
  # 0.123456789101112...
  #              ^
  # x = 12 のとき d(x)=1

  @c = ""
  @last = 0
  def self.d x
    while @c.size < x+1 do
      @last += 1
      @c += @last.to_s
    end
    @c[x-1].to_i
  end
  def self.solve
    (0..6).map{|i|10**i}.inject{|product,j|product*d(j)}
  end
end
