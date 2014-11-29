# coding: utf-8

class Euler038
  # 元の数が5桁の場合、n>1だから、
  # 1,2を掛けたとたんに積の連結が10個以上になってしまうので、
  # パンデジタル数が作れない。
  # 元の数(x)は4桁以内であると考えて良い。

  def self.solve
    tmp = []
    def tmp.pandigital?
      join.split(//).sort.map(&:to_i) == (1..9).to_a
    end
    pandigitals = []
    (1..9999).each do |x|
      tmp.clear
      (1..9).each do |i|
        tmp << x * i
        if tmp.join.size == 9
          pandigitals << tmp.join if tmp.pandigital?
        end
        break if tmp.join.size > 9
      end
    end
    pandigitals.sort.last.to_i
  end
end
