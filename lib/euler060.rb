# Problem 60 「素数ペア集合」
# 素数3, 7, 109, 673は非凡な性質を持っている. 任意の2つの素数を任意の順で繋げると, また素数になっている. 例えば, 7と109を用いると, 7109と1097の両方が素数である. これら4つの素数の和は792である. これは, このような性質をもつ4つの素数の集合の和の中で最小である.

# 任意の2つの素数を繋げたときに別の素数が生成される, 5つの素数の集合の和の中で最小のものを求めよ.
#
require 'pry'
require 'set'
require 'prime'

class Euler060
  def self.good?(array)
    (array.first.to_s + array.last.to_s).to_i.prime? && \
      (array.last.to_s + array.first.to_s).to_i.prime?
  end

  def self.all_good?(array)
    array.combination(2).all?{|a| good?(a)}
  end

  def self.solve
    @array_1 = []
    @array_2 = []
    @array_3 = []
    @array_4 = []
    @array_5 = []

    (1..10_000).each do |k|
      next if not k.prime?
      partners = []
      @array_1.each do |array|
        a = array.dup
        a.push k
        if good?(a)
          @array_2 << a
          partners << a.first
        end
      end

      partners.combination(2).each do |array|
        next if not @array_2.include? array
        a = array.dup
        a.push k
        @array_3 << a
      end

      #@array_3 ができた

      targets = @array_3.select{|array|array.include? k}.map{|array|array[0,2]}
      targets.combination(3).each do |array_2d|
        val = array_2d.flatten.uniq
        if val.size == 3
          val << k
          @array_4 << val
        end
      end

      #@array_4 ができた

      targets = @array_4.select{|array|array.include? k}.map{|array|array[0,3]}
      targets.combination(4).each do |array_2d|
        val = array_2d.flatten.uniq
        if val.size == 4
          val << k
          @array_5 << val
        end
      end

      @array_1 << [k]
      break if not @array_5.empty?
    end

    @array_5.flatten.inject(&:+)
  end
end
