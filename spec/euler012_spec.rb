require 'rspec'
require './lib/euler012'
describe Euler012 do
  it 'return collect answer' do
    Euler012.solve.should == 76576500
  end
end
