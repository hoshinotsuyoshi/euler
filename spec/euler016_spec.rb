require 'rspec'
require './lib/euler016'
describe Euler016 do
  it 'return collect answer' do
    Euler016.solve.should == 1366
  end
end
