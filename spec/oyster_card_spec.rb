require './lib/oyster_card'

describe OysterCard do
  #Name Error
  #./spec/oyster_card_spec.rb
  #line 1
  it "should have a zero balance" do
    expect(subject.balance).to eq 0
  end 

  describe "#top_up" do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it "should add top up amount to balance" do
      expect{ subject.top_up(10) }.to change { subject.balance }.from(0).to(10)
    end 

    it "should raise an error if top up will exceed maximum amount" do
      maximum_amount = OysterCard::MAXIMUM_AMOUNT
      subject.top_up(maximum_amount)
      expect{ subject.top_up(1) }.to raise_error("Exceeds Amount - adding 1 makes your 91 exceed 90")
    end
  end

  describe "#deduct" do
    it { is_expected.to respond_to(:deduct).with(1).argument}

    it "should deduct amount from balance" do
      subject.top_up(10)
      expect{ subject.deduct(10) }.to change { subject.balance }.by -10
    end
  end

  describe "#in_journey?" do
    it "should show in journey to be false when card has not touched in" do
      expect(subject).not_to be_in_journey
    end 
  end

  describe "#touch_in" do
    it "should touch in" do
      subject.touch_in
      expect(subject).to be_in_journey
    end 
  end

  describe "#touch_out" do
    it "should touch out" do
      subject.touch_out
      expect(subject).not_to be_in_journey
    end
  end
  
end