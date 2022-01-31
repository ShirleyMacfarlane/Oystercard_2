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
  end
end