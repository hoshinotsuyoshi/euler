require 'rspec'
require './lib/euler005'
describe Euler005 do
  it 'return collect answer' do
    Euler005.solve.should == 232792560 
  end
end
