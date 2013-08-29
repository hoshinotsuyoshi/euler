require 'rspec'
require './lib/euler011'
describe Euler011 do
  it 'return collect answer' do
    Euler011.solve.should == 70600674
  end
end
