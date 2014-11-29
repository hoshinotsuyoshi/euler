require 'open-uri'
require 'csv'
require 'pry'

class Euler054
  class Hand
    CardOrder = %w(2 3 4 5 6 7 8 9 T J Q K A)
    def initialize(arg)
      @cards = (0..4).map { |n|{ digit: CardOrder.index(arg[n][0]), suit: arg[n][1] } }
      @digits = @cards.map { |card| card[:digit] }.sort
      hash = {}
      @digits.each do|d|
        hash[d] ||= 0
        hash[d] += 1
      end
      @digits_amount = hash.values.sort

      calc_hands
    end

    attr_reader :hands

    def <=>(other)
      @hands <=> other.hands
    end

    def calc_hands
      @high_card_1 = 0
      if royal_straight_flash?
        @rank = 9
      elsif straight_flash?
        @rank = 8
      elsif four_cards?
        @rank = 7
        @high_card_1 = @digits.select { |i|@digits.count(i) == 4 }.first
      elsif full_house?
        @rank = 6
        @high_card_1 = @digits.select { |i|@digits.count(i) == 3 }.first
      elsif flash?
        @rank = 5
      elsif straight?
        @rank = 4
      elsif three_cards?
        @rank = 3
        @high_card_1 = @digits.select { |i|@digits.count(i) == 3 }.first
      elsif two_pairs?
        @rank = 2
        @high_card_1 = @digits.select { |i|@digits.count(i) == 2 }.sort.last
      elsif one_pair?
        @rank = 1
        @high_card_1 = @digits.select { |i|@digits.count(i) == 2 }.first
      else
        @rank = 0
      end
      @high_card_2 = @digits.sort.last
      @hands = [@rank, @high_card_1, @high_card_2]
    end

    def flash?
      @cards.map { |card|card[:suit] }.uniq.size == 1
    end

    def straight?
      min = @digits.first
      @digits == [min, min + 1, min + 2, min + 3, min + 4]
    end

    def straight_flash?
      return false unless straight?
      flash?
    end

    def royal_straight_flash?
      return false unless straight_flash?
      @digits.last == 12
    end

    def full_house?
      @digits_amount == [2, 3]
    end

    def four_cards?
      @digits_amount == [1, 4]
    end

    def three_cards?
      @digits_amount == [1, 1, 3]
    end

    def two_pairs?
      @digits_amount == [1, 2, 2]
    end

    def one_pair?
      @digits_amount == [1, 1, 1, 2]
    end
  end
  class << self
    def solve
      file = open('https://projecteuler.net/project/resources/p054_poker.txt')
      deals = CSV.read(file, col_sep: ' ')
      deals.map do |deal|
        Hand.new(deal[0, 5]) <=> Hand.new(deal[5, 5])
      end.count(1)
    end
  end
end
