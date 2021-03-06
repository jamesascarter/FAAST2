class Station

	attr_reader :trains, :passengers

	def initialize
		@passengers = []
		@trains = []
	end

	def enter(passenger)
		raise "sorry, you do not have enough credit to enter the station" if passenger.dollar < 2
		@passengers << passenger
	end	

	def passenger_count
		@passengers.count
	end	
	
	def leave(passenger)
		@passengers.delete(passenger)
	end	

	def train_count
		@trains.count
	end	

	def arrive(train)
		@trains << train
	end	

	def depart(train)
		@trains.delete(train)
	end

	def train_here?(train)
		@trains.include?(train)
	end
end
