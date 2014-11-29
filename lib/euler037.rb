# coding: utf-8

# Rubyの標準添付ライブラリを使用する
require 'prime'

class Euler037
  # 切り詰め可能か？
  def self.kiritsume_able?(n)
    # 題意より、1ケタはダメ
    return false if n < 10
    s = n.to_s
    (1..s.size - 1).each do |i|
      return false unless s[0, i].to_i.prime?
      return false unless s[i, s.size - i].to_i.prime?
    end
    return false unless n.prime?
    true
  end

  def self.solve
    @array = []
    i = 0
    loop do
      i += 1
      @array << i if kiritsume_able? i
      # puts "#{i}..." if i % 100_000 == 0
      break if @array.size > 10
    end
    @array.inject(:+)
  end
end
