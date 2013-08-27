require 'rspec'
require './lib/euler008'
describe Euler008 do
  it 'return collect answer' do
    Euler008.solve.should == 40824
  end
end
