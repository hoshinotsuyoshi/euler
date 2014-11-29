require 'set'
class Euler063
  class << self
    def solve
      (1..1000).each do |a|
        (1..9).each do |b|
          x = b ** a
          if x.to_s.size == a
            (@a||=[]) << [a,b]
          end
        end
      end

      @a.size
    end
  end
end
