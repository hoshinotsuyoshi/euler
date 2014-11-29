# coding: utf-8
class Euler045
  @pentas = { 1 => 1 }
  class << self
    # 五角数のみメモ化する
    # 配列よりハッシュのほうが早い
    def pentas(x)
      @pentas[x] || (@pentas[x] = ((x * (3 * x - 1)) / 2).to_i)
    end

    def hexas(x)
      x * (2 * x - 1)
    end

    def penta?(x)
      while x > @pentas[@pentas.keys.max]
        @tmp = @pentas.keys.max + 1
        pentas @tmp
      end
      @pentas.clear
      pentas @tmp
      !!(@pentas.values.index x)
    end

    def solve
      n = 1
      while hexas(n) <= 40_755 || !penta?(hexas n); n += 1; end
      hexas n
    end
  end
end
