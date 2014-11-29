# coding: utf-8
class Euler034
  def self.factorial(n)
    return 1 if n == 0
    (1..n).inject(&:*)
  end
  def self.interesting?(n)
    n == n.to_s.split(//).map { |e|factorial(e.to_i) }.inject(&:+)
  end
  # 7 * factorial(9) => 2540160
  def self.solve
    array = []
    (3..(factorial(9) * 7)).each do |n|
      array << n if interesting? n
    end
    array.inject(&:+)
  end
end
