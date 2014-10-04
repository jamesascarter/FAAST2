describe Station do 

	it "should allow passenger to enter" do
	expect{station.enter(passenger)}.to change{station.passenger_count}.by 1
	end


end