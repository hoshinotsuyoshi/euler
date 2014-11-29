# coding: utf-8
class Euler024
  def self.solve
    array = (0..9).to_a
    i = 0
    array.each do |e1|
      (array - [e1]).each do |e2|
        (array - [e1, e2]).each do |e3|
          (array - [e1, e2, e3]).each do |e4|
            (array - [e1, e2, e3, e4]).each do |e5|
              (array - [e1, e2, e3, e4, e5]).each do |e6|
                (array - [e1, e2, e3, e4, e5, e6]).each do |e7|
                  (array - [e1, e2, e3, e4, e5, e6, e7]).each do |e8|
                    (array - [e1, e2, e3, e4, e5, e6, e7, e8]).each do |e9|
                      (array - [e1, e2, e3, e4, e5, e6, e7, e8, e9]).each do |e10|
                        i += 1
                        if i == 1_000_000
                          return [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10].join.to_i
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
