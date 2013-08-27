require 'rspec'
require './lib/euler007'
describe Euler007 do
  it 'return collect answer' do
    Euler007.solve.should == 104743
  end
end
