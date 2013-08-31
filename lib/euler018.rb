# coding: utf-8
class Euler018
  def self.solve
    string = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
    @triangle = string.split("\n").map{|digits| digits.split("\s").map(&:to_i)}
    #各行ごとに処理
    @triangle.size.times do |row|
      #最後まで来たらスキップ
      next if row == @triangle.size-1

      #左右隣同士で大きいほうを下の数字に足していく
      @triangle[row+1][0] += @triangle[row][0]
      @triangle[row].size.times do |i|
	max = [@triangle[row][i],@triangle[row][i+1]||0].sort.last
	@triangle[row+1][i+1] += max
      end

    end
    #最後の行の最大値を調べる
    @triangle.last.sort.last
  end
end
