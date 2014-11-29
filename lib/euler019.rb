# coding: utf-8
class Euler019
  # これがRubyだ(やる気が無いわけではない)
  def self.solve
    require 'date'
    c = 0
    (1901..2000).each do |yyyy|
      (1..12).each do |mm|
        c += 1 if Date.new(yyyy, mm, 1).sunday?
      end
    end
    c
  end
end
