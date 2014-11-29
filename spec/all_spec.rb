shared_examples_for 'solves the problem' do
  let(:answers) do
    File.read('answers.txt').split("\n").map(&:to_i)
  end

  let(:index) do
    described_class.to_s[-3, 3].to_i - 1
  end

  it 'returns correct answer' do
    puts "    expected:   #{answers[index]}"
    expect(described_class.solve).to eq(answers[index])
  end
end

Dir.glob('lib/*.rb').each { |lib| require "./#{lib}" }

describe(Euler001){ it_behaves_like 'solves the problem' }
describe(Euler002){ it_behaves_like 'solves the problem' }
describe(Euler003){ it_behaves_like 'solves the problem' }
describe(Euler004){ it_behaves_like 'solves the problem' }
describe(Euler005){ it_behaves_like 'solves the problem' }
describe(Euler006){ it_behaves_like 'solves the problem' }
describe(Euler007){ it_behaves_like 'solves the problem' }
describe(Euler008){ it_behaves_like 'solves the problem' }
describe(Euler009){ it_behaves_like 'solves the problem' }
describe(Euler010){ it_behaves_like 'solves the problem' }
describe(Euler011){ it_behaves_like 'solves the problem' }
describe(Euler012){ it_behaves_like 'solves the problem' }
describe(Euler013){ it_behaves_like 'solves the problem' }
describe(Euler014){ it_behaves_like 'solves the problem' }
describe(Euler015){ it_behaves_like 'solves the problem' }
describe(Euler016){ it_behaves_like 'solves the problem' }
describe(Euler017){ it_behaves_like 'solves the problem' }
describe(Euler018){ it_behaves_like 'solves the problem' }
describe(Euler019){ it_behaves_like 'solves the problem' }
describe(Euler020){ it_behaves_like 'solves the problem' }
describe(Euler021){ it_behaves_like 'solves the problem' }
describe(Euler022){ it_behaves_like 'solves the problem' }
describe(Euler023){ it_behaves_like 'solves the problem' }
describe(Euler024){ it_behaves_like 'solves the problem' }
describe(Euler025){ it_behaves_like 'solves the problem' }
describe(Euler026){ it_behaves_like 'solves the problem' }
describe(Euler027){ it_behaves_like 'solves the problem' }
describe(Euler028){ it_behaves_like 'solves the problem' }
describe(Euler029){ it_behaves_like 'solves the problem' }
describe(Euler030){ it_behaves_like 'solves the problem' }
describe(Euler031){ it_behaves_like 'solves the problem' }
describe(Euler032){ it_behaves_like 'solves the problem' }
describe(Euler033){ it_behaves_like 'solves the problem' }
describe(Euler034){ it_behaves_like 'solves the problem' }
describe(Euler035){ it_behaves_like 'solves the problem' }
describe(Euler036){ it_behaves_like 'solves the problem' }
describe(Euler037){ it_behaves_like 'solves the problem' }
describe(Euler038){ it_behaves_like 'solves the problem' }
describe(Euler039){ it_behaves_like 'solves the problem' }
describe(Euler040){ it_behaves_like 'solves the problem' }
describe(Euler041){ it_behaves_like 'solves the problem' }
describe(Euler042){ it_behaves_like 'solves the problem' }
describe(Euler043){ it_behaves_like 'solves the problem' }
describe(Euler044){ it_behaves_like 'solves the problem' }
describe(Euler045){ it_behaves_like 'solves the problem' }
describe(Euler046){ it_behaves_like 'solves the problem' }
describe(Euler047){ it_behaves_like 'solves the problem' }
describe(Euler048){ it_behaves_like 'solves the problem' }
describe(Euler049){ it_behaves_like 'solves the problem' }
describe(Euler050){ it_behaves_like 'solves the problem' }
describe(Euler051){ it_behaves_like 'solves the problem' }
describe(Euler052){ it_behaves_like 'solves the problem' }
describe(Euler053){ it_behaves_like 'solves the problem' }
describe(Euler054){ it_behaves_like 'solves the problem' }
describe(Euler055){ it_behaves_like 'solves the problem' }
describe(Euler056){ it_behaves_like 'solves the problem' }
describe(Euler057){ it_behaves_like 'solves the problem' }
describe(Euler058){ it_behaves_like 'solves the problem' }
describe(Euler059){ it_behaves_like 'solves the problem' }
describe(Euler060){ it_behaves_like 'solves the problem' }
describe(Euler061){ it_behaves_like 'solves the problem' }
describe(Euler062){ it_behaves_like 'solves the problem' }
describe(Euler063){ it_behaves_like 'solves the problem' }
