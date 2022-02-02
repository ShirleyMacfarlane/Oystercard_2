require_relative '../lib/station'
describe Station do


  describe "initialize" do
    station = Station.new("Bank", "1")
   
    it "should set the first argument" do
      expect(station.name).to eq("Bank")
    end

    it "should set the second argument" do
      expect(station.zone).to eq("1")
    end
  end     
end