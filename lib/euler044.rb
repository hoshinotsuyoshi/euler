# coding: utf-8
class Euler044
  class << self
    def pantagonal(n)
      # 与式
      n * (3 * n - 1) / 2
    end

    def pantagonal?(x)
      # 五角数かどうかを判別する
      tmp = 1 + 24 * x
      if (tmp**0.5).to_i**2 == tmp
        answer = ((tmp**0.5).to_i + 1) / (6.0)
        answer.to_i.to_f == answer
      else
        false
      end
    end

    def solve
      c = 1
      loop do
        x = pantagonal(c)
        (1..c).each do |e|
          y = pantagonal(e)
          next unless pantagonal?(x - y)
          next unless pantagonal?(x + y)
          return x - y
        end
        c += 1
      end
    end
  end
end
