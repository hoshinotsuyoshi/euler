# coding: utf-8
class Euler016
  def self.solve
    (2**1000).to_s.split(//).map(&:to_i).inject(&:+)
  end
end
