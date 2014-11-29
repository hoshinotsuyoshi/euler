class Euler049
  class << self
    require 'prime'
    def solve
      answers = []
      (((0..9).to_a) + ((0..9).to_a) + ((0..9).to_a) + ((0..9).to_a)).combination(4).to_a.uniq.sort.each do |c|
        array = c.permutation.to_a.uniq.map { |num|num.join.to_i }.select { |e|e.prime? && e > 1000 }
        next if array.size < 3
        array.combination(3).to_a.uniq.each do |c2|
          a = c2.sort
          answers.push a if a[1] - a[0] == a[2] - a[1]
        end
      end
      (answers.uniq - [[1487, 4817, 8147]]).first.join.to_i
    end
  end
end
