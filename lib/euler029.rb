# coding: utf-8
class Euler029
  def self.solve
    (2..100).map { |a|(2..100).map { |b|a**b } }.flatten.uniq.size
  end
end
