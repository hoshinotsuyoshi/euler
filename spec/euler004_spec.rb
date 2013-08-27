require 'rspec'
require './lib/euler004'
describe Euler004 do
  it 'return collect answer' do
    Euler004.solve.should == 906609
  end
end
