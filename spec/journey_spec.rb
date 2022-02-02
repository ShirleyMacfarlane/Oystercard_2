require_relative '../lib/journey'

describe Journey do

  describe '#initialize method' do
  journey = Journey.new('Victoria', '1')
  it 'knows its entry station' do
    expect(journey.entry_station).to eq ('Victoria')
  end

  it 'knows its zone' do
    expect(journey.zone).to eq ('1')
  end
end
end