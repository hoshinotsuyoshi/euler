require 'rspec'
require './lib/euler014'
describe Euler014 do
  it 'return collect answer' do
    Euler014.solve.should == 837799
  end
end
