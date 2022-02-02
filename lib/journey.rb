class Journey

  attr_reader :entry_station, :zone

  def initialize(entry_station, zone)
    @entry_station = entry_station
    @zone = zone
  end

end