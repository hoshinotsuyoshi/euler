require 'set'

class Euler061
  class << self
    def generate_xangles(set)
      (1..Float::INFINITY).each do |n|
        value = yield(n)
        case value
        when 1...1_000
          then next
        when 1_000...10_000
          then set << value
        else
          break
        end
      end
    end

    def xangles
      Set.new.tap do |set|
        generate_xangles(set) do |x|
          yield x
        end
      end
    end

    def melt(array1, array2)
      set = Set.new
      array1.each do |num1|
        array2.each do |num2|
          if num1.to_s[-2..-1] == num2.to_s[0..1]
            set << (num1.to_s[0..-3] + num2.to_s).to_i
          end
        end
      end
      set
    end

    def solve
      _3s = xangles{|x| (x*(x+1))/2 }
      _4s = xangles{|x| x*x }
      _5s = xangles{|x| x*(3*x-1)/2 }
      _6s = xangles{|x| x*(2*x-1) }
      _7s = xangles{|x| (x*(5*x-3))/2 }
      _8s = xangles{|x| x*(3*x-2) }

      melted = [_3s, _4s, _5s, _6s, _7s, _8s].permutation(6) do |_1, _2, _3, _4, _5, _6|
        set = melt(melt(melt(melt(melt(_1, _2), _3), _4), _5), _6)
        value = set.find do |num|
          num.to_s[-2..-1] == num.to_s[0..1]
        end
        break value if value
      end

      s = melted.to_s
      [s[0, 4], s[2, 4], s[4, 4], s[6, 4], s[8, 4], s[10, 4]].inject do |i, sum|
        sum = sum.to_i + i.to_i
      end
    end
  end
end
