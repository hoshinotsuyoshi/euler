require 'rspec'
require './lib/euler015'
describe Euler015 do
  it 'return collect answer' do
    Euler015.solve.should == 137846528820
  end
end
