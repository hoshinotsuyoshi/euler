class Euler014
  @chain = {}
  @chain[0] = 0
  @chain[1] = 1
  def self.chains(n)
    return @chain[n] if @chain[n]
    # begin
    if n.odd?
      @chain[n] = chains(3 * n + 1) + 1
    else
      @chain[n] = chains(n / 2) + 1
    end
    # rescue
    #  puts n
    #  exit
    # end
  end
  def self.solve
    i, max = 1, 0
    loop do
      break max if i == 1_000_000
      max = i if chains(i) > chains(max)
      i += 1
    end
  end
end
