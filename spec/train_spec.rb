require 'train'
require 'coach'

describe Train do 

	let(:train) { Train.new}
	let(:coach) { double :coach}

	it "should contain 3 coaches" do
		expect(train.coaches.length).to eq(3)
	end


end