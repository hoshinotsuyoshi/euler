require './lib/euler054.rb'
describe Euler054 do
  before do
    @hand = Euler054::Hand.new %w(2D 2S 3H 3C 7H)
  end
  it 'can judge two_pairs or not' do
    expect(@hand.two_pairs?).to be true
  end
  it "returns hand's value as an array" do
    expect(@hand.hands).to eq [2, 1, 5]
  end
end
