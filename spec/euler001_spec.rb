require 'rspec'
require './lib/euler001'
describe Euler001 do
  it 'return collect answer' do
    Euler001.solve.should == 233168
  end
end
