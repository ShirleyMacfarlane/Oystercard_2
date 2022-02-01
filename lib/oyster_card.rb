class OysterCard
  attr_reader :balance

  MINIMUM_BALANCE = 1
  MAXIMUM_AMOUNT = 90

  def initialize
    @balance = 0
    @in_journey = false
  end 

  def top_up(amount)
    raise "Exceeds Amount - adding #{amount} makes your #{@balance + amount} exceed #{MAXIMUM_AMOUNT}" if balance + amount > MAXIMUM_AMOUNT
    @balance += amount
  end

  def touch_in
    raise "Insufficient balance" if balance < MINIMUM_BALANCE
    @in_journey = true
  end

  def in_journey?
    @in_journey
  end

  def touch_out
    @in_journey = false
    deduct(MINIMUM_BALANCE)
  end

  private

  def deduct(fare)
    @balance -= fare
  end

end 