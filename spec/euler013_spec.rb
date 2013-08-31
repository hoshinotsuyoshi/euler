require 'rspec'
require './lib/euler013'
describe Euler013 do
  it 'return collect answer' do
    Euler013.solve.should == 5537376230
  end
end
