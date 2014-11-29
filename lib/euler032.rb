# coding: utf-8
class Euler032
  def self.pandigital(e1, e2, e3, e4, e5, e6, e7, e8, e9)
    sum = (e6 + e7 + e8 + e9).to_i
    # 1-4-4
    return sum if e1.to_i * (e2 + e3 + e4 + e5).to_i == sum
    # 2-3-4
    return sum if (e1 + e2).to_i * (e3 + e4 + e5).to_i == sum
    0
  end
  def self.solve
    array = []
    a = ('1'..'9').to_a
    a.each do |e1|
      (a - [e1]).each do |e2|
        (a - [e1, e2]).each do |e3|
          (a - [e1, e2, e3]).each do |e4|
            (a - [e1, e2, e3, e4]).each do |e5|
              (a - [e1, e2, e3, e4, e5]).each do |e6|
                (a - [e1, e2, e3, e4, e5, e6]).each do |e7|
                  (a - [e1, e2, e3, e4, e5, e6, e7]).each do |e8|
                    (a - [e1, e2, e3, e4, e5, e6, e7, e8]).each do |e9|
                      array << pandigital(e1, e2, e3, e4, e5, e6, e7, e8, e9)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    array.uniq.inject(&:+)
  end
end
