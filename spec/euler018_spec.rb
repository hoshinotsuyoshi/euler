require 'rspec'
require './lib/euler018'
describe Euler018 do
  it 'return collect answer' do
    Euler018.solve.should == 1074
  end
end
