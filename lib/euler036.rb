# coding: utf-8
class Euler036
  def self.reversible? n
    n.to_s(2) == n.to_s(2).reverse
  end
  def self.solve
    reversible_array = []
    #ABCCBA
    (1..999).each do |abc|
      x = (abc.to_s + abc.to_s.reverse).to_i 
      reversible_array << x if reversible? x
    end
    #ABCBA
    (1..999).each do |abc|
      x = (abc.to_s.chop + abc.to_s.reverse).to_i 
      reversible_array << x if reversible? x
    end
    reversible_array.inject(&:+)
  end
end
