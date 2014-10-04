require 'station'

describe Station do 

	let(:station) {Station.new}
	let(:passenger) {double :passenger}
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
end	