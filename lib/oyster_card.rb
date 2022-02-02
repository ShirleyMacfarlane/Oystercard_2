require_relative '../lib/journey'
class OysterCard
  attr_reader :balance
  #attr_accessor :entry_station
 # attr_accessor :exit_station
  attr_reader :journeys

  MINIMUM_BALANCE = 1
  MAXIMUM_AMOUNT = 90

  def initialize
    @balance = 0
 

  end 

  def top_up(amount)
    raise "Exceeds Amount - adding #{amount} makes your #{@balance + amount} exceed #{MAXIMUM_AMOUNT}" if balance + amount > MAXIMUM_AMOUNT
    @balance += amount
  end

  def touch_in(entry_station)
    raise "Insufficient balance" if balance < MINIMUM_BALANCE
    @journey = Journey.new(entry_station)
    @journey.add_journey_entry
  end

  def touch_out(exit_station)
   deduct(MINIMUM_BALANCE)
   @journey.add_journey_exit(exit_station)
  end

  def deduct(fare)
    @balance -= fare
  end

end 