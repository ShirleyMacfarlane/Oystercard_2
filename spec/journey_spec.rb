require_relative '../lib/journey'

describe Journey do

  describe '#initialize method' do
      journey = Journey.new('Victoria')
      it 'knows its entry station' do
      expect(journey.entry_station).to eq ('Victoria')
  end

    it 'knows its exit station' do
      expect(subject.add_journey_exit(exit_station)).to eq (:exit_station)
    end
  end

end