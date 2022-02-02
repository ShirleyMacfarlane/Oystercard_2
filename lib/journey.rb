class Journey

  attr_reader :entry_station
  attr_reader :exit_station

  def initialize(entry_station)
    #@entry_station = entry_station
    @entry_station = entry_station
    @exit_station = nil
    @journeys = {}
  end

  def in_journey? 
    @entry_station != nil
   # !!entry_station
   end

  def calculate_fare
  end

   def add_journey_entry
    @journeys[:entry_station] = @entry_station
    @entry_station = @entry_station
   end
 
   def add_journey_exit(exit_station)
     @entry_station = nil
     @journeys[:exit_station] = exit_station
   end
end