# coding: utf-8
class Euler033
  def self.solve
    array = []
    # y/x
    (11..99).each do |x|
      next if x.to_s.split(//).last.to_i.zero?
      next if x.to_s.split(//).uniq.size == 1
      (11...x).each do |y|
        next if y.to_s.split(//).last.to_i.zero?
        next if y.to_s.split(//).uniq.size == 1
        next if (x.to_s.split(//) + y.to_s.split(//)).uniq.size != 3
        n = (x.to_s.split(//) & y.to_s.split(//))
        array << [x, y] if (y.to_s.split(//) - n).first.to_f / (x.to_s.split(//) - n).first.to_i == y.to_f / x
      end
    end
    array.map { |a|Rational(a.last, a.first) }.inject(&:*).denominator
  end
end
