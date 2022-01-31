require './lib/oyster_card'

describe OysterCard do
  #Name Error
  #./spec/oyster_card_spec.rb
  #line 1
  it "should have a balance" do
    expect(subject.balance).to eq 1
  end 
end