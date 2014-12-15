require 'passenger'

describe Passenger do

	let(:passenger) { Passenger.new }

	it "should have £2 once starts in the system" do
		expect(passenger.dollar).to eq(2)
	end

end
