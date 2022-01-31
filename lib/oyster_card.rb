class OysterCard
  attr_reader :balance
  
  MAXIMUM_AMOUNT = 90

  def initialize
    @balance = 0
  end 

  def top_up(amount)
    raise "Exceeds Amount - adding #{amount} makes your #{@balance + amount} exceed #{MAXIMUM_AMOUNT}" if balance + amount > MAXIMUM_AMOUNT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

end 