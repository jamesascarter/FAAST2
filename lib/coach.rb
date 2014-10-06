class Coach

	attr_reader :capacity, :passengers

	DEFAULT_CAPACITY = 40

	def initialize
		@capacity = DEFAULT_CAPACITY
		@passengers = []
	end	

	def embark(passenger,station)
		@passengers << passenger
		station.leave(passenger)
	end	

	def full?
		@capacity == DEFAULT_CAPACITY
	end	
end