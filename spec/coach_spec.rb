require 'coach'

describe Coach do

	let(:coach) {Coach.new}
	let(:passenger) {double :passenger}
	let(:station) {double :station, :leave => nil, :enter => nil}	


	it "should have a default capacity of 40" do
		expect(coach.capacity).to eq(40)
	end

	it 'should allow passenger to enter the coach' do
		coach.embark(passenger,station)
		expect(coach.passenger_count).to eq(1)
	end

	it "should know when it is full" do
		40.times{coach.embark(passenger,station)}
		expect(coach.full?).to eq(true)
	end

	it "should return an error when the coach is full" do
		40.times {coach.embark(passenger,station)}
		expect(lambda{coach.embark(passenger,station)}).to raise_error("sorry the coach is full")
	end

	it "should allow passengers to leave a coach" do
		coach.embark(passenger,station)
		expect{coach.alight(passenger,station)}.to change{coach.passenger_count}.by -1
	end
end