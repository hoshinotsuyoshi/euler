require 'rspec'
require './lib/euler002'
describe Euler002 do
  it 'return collect answer' do
    Euler002.solve.should == 4613732
  end
end
