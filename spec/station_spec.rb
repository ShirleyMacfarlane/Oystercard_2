require_relative '../lib/station'
describe Station do

#   let (:name) { double "Victoria"}
#   let (:zone) { double "Zone 1"}
    
    describe "initialize" do
        station = Station.new("Bank", "1")
      it "should instantiate the class with 2 arguments" do
        expect(subject("a", "b")).to be_an_instance_of(Station)
      end

      it "should set the first argument" do
         #station = Station.new("Bank", "1")
          expect(station.name).to eq("Bank")
      end

      it "should set the second argument" do
        expect(station.zone).to eq("1")
      end

    end
        
end