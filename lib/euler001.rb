class Euler001
  def self.solve
    (1...1000).select { |n|n % 3 == 0 || n % 5 == 0 }.inject { |sum, i|sum + i }
  end
end
