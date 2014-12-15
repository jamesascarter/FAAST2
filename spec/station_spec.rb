require 'station'

describe Station do 

	let(:station) {Station.new}
	let(:passenger) {double :passenger, :dollar => 2}
	let(:passenger1) {double :passenger, :dollar => 1}
	let(:train) {double :train}

	it "should allow passenger to enter" do
		expect{station.enter(passenger)}.to change{station.passenger_count}.by 1
	end

	it "should allow passenger to leave the station" do
		station.enter(passenger)
		expect{station.leave(passenger)}.to change{station.passenger_count}.by -1
	end

	it "should allow train to arrive at the station" do
		expect{station.arrive(train)}.to change{station.train_count}.by 1
	end

	it "should allow train to depart from the station" do
		station.arrive(train)
		expect{station.depart(train)}.to change{station.train_count}.by -1
	end	

	it 'should know when there is a train at the station' do
		station.arrive(train)
		expect(station.train_here?(train)).to eq(true)
	end

	it "should only allow passengers to enter if they have >£2 credit" do
		expect(lambda{station.enter(passenger1)}).to raise_error("sorry, you do not have enough credit to enter the station")
	end

end	