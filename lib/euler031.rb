# coding: utf-8
class Euler031
  def self.solve
    c = 0
    (0..1).each   do |p200|
    (0..2).each   do |p100|
      break if p100*100+p200*200 > 200
    (0..4).each   do |p50|
      break if p50*50+p100*100+p200*200 > 200
    (0..10).each  do |p20|
      break if p20*20+p50*50+p100*100+p200*200 > 200
    (0..20).each  do |p10|
      break if p10*10+p20*20+p50*50+p100*100+p200*200 > 200
    (0..40).each  do |p5|
      break if p5*5+p10*10+p20*20+p50*50+p100*100+p200*200 > 200
    (0..100).each do |p2|
      break if p2*2+p5*5+p10*10+p20*20+p50*50+p100*100+p200*200 > 200
    (0..200).each do |p1|
      break if p1+p2*2+p5*5+p10*10+p20*20+p50*50+p100*100+p200*200 > 200
      c += 1 if p1+p2*2+p5*5+p10*10+p20*20+p50*50+p100*100+p200*200 == 200
    end
    end
    end
    end
    end
    end
    end
    end
    c
  end
end
