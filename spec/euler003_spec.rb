require 'rspec'
require './lib/euler003'
describe Euler003 do
  it 'return collect answer' do
    Euler003.solve.should == 6857
  end
end
