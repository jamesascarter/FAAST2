class Station

	attr_reader :trains, :passengers

	def initialize
		@passengers = []
		@trains = []
	end

	def enter(passenger)
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
end
