require 'coach'
require 'station'

describe Coach do

	let(:coach) {Coach.new}
	let(:passenger) {double :passenger}
	let(:station) {double :station}	


	it "should have a default capacity of 40" do
		expect(coach.capacity).to eq(40)
	end

	it "should know when it is full" do
		allow(station).to receive(:leave)
		40.times{coach.embark(passenger,station)}
		expect(coach.full?).to eq(true)
	end	
end