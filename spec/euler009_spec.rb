require 'rspec'
require './lib/euler009'
describe Euler009 do
  it 'return collect answer' do
    Euler009.solve.should == 31875000
  end
end
