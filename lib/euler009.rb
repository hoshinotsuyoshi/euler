# coding: utf-8
class Euler009
  # 与式
  # a**2+b**2==c**2
  # c = -a-b+1000
  # ゆえに
  # 1_000_000+2*a*b-2000*a-2000*b == 0
  def self.solve
    (1..333).each do |a|
      (a..499).each do |b|
        return a * b * (1000 - a - b) if 1_000_000 + 2 * a * b - 2000 * a - 2000 * b == 0
      end
    end
  end
end
