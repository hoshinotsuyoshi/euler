# coding: utf-8
class Euler017
  def self.solve
    # 0-19
    @letters  = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    # 20-99
    xxxxty ||= %w(twenty thirty forty fifty sixty seventy eighty ninety)
    [20, 30, 40, 50, 60, 70, 80, 90].each do |d|
      x = xxxxty.shift
      @letters[d] = x
      @letters += @letters[1, 9].map { |letter|"#{x}#{letter}" }
    end
    # 100-999
    (1..9).each do |d|
      # x00
      @letters << "#{@letters[d]}hundred"
      # x01-x09
      @letters += @letters[1, 99].map { |letter|"#{@letters[d]}hundredand#{letter}" }
    end
    @letters << 'onethousand'
    @letters[1, 1000].map(&:size).inject(:+)
  end
end
