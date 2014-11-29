# coding: utf-8
class Euler040
  # チャンパーノウン定数
  # 0.123456789101112...
  #              ^
  # x = 12 のとき d(x)=1

  @a = []
  @last = 0
  def self.d(x)
    while @a[x - 1].nil?
      @last += 1
      @a.push *@last.to_s.split(//).map(&:to_i)
    end
    @a[x - 1]
  end
  def self.solve
    (0..6).map { |i|10**i }.inject { |product, j|product * d(j) }
  end
end
