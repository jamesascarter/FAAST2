require 'passenger'

describe Passenger do

	let(:passenger) { Passenger.new }
	let(:station) { :station }

	it "should have £0 once starts in the system" do
		expect(passenger.dollar).to eq(0)
	end

	it "should allow passenger to topup credit" do
		passenger.topup(5)
		expect(passenger.dollar).to eq(5) 
	end

	it "should be able to pay for a journey costing £1" do
		passenger.topup(5)
		passenger.touch_in(station)
		expect(passenger.dollar).to eq(4)
	end

end
