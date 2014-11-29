# coding: utf-8
class Euler030
  def self.equals_sum_of_fifth_powers_of_their_digits?(n)
    n == n.to_s.split(//).map { |e|e.to_i**5 }.inject(&:+)
  end
  # 9の5乗が60000以下で、これを5つ並べても高々300000までしか作れないので、
  # 6桁までの数値についてすべて調べれば十分
  def self.solve
    (2..999_999).select { |e|equals_sum_of_fifth_powers_of_their_digits? e }.inject(&:+)
  end
end
