require 'rspec'
require './lib/euler010'
describe Euler010 do
  it 'return collect answer' do
    Euler010.solve.should == 142913828922
  end
end
