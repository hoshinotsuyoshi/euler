require 'rspec'
require './lib/euler017'
describe Euler017 do
  it 'return collect answer' do
    Euler017.solve.should == 21124
  end
end
