answers = File.read('answers.txt').split("\n").map(&:to_i)
Dir.glob('lib/*.rb').each do |lib|
  require "./#{lib}"
  euler = eval lib.sub('lib/', '').sub('.rb', '').capitalize
  describe euler do
    it 'return collect answer' do
      expect(euler.solve).to eq(answers[euler.to_s[-3, 3].to_i - 1])
    end
  end
end
