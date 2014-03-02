require 'rspec'
answers = File.open("answers.txt","r").map{|line|line.chomp.to_i}
Dir.glob("lib/*055.rb").each do |lib|
  require "./#{lib}"
  euler = eval lib.sub("lib/","").sub(".rb","").capitalize
  describe euler do
    it 'return collect answer' do
      euler.solve.should == answers[euler.to_s[-3,3].to_i-1]
    end
  end
end
