require 'rspec'
require './lib/euler006'
describe Euler006 do
  it 'return collect answer' do
    Euler006.solve.should == 25164150
  end
end
