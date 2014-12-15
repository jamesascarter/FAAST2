class Coach

	attr_reader :capacity, :passengers

	DEFAULT_CAPACITY = 40

	def initialize
		@capacity = DEFAULT_CAPACITY
		@passengers = []
	end	

	def passenger_count
		@passengers.count
	end

	def embark(passenger,station)
		raise "sorry the coach is full" if full?
		@passengers << passenger
		station.leave(passenger)
	end	

	def full?
		passenger_count == DEFAULT_CAPACITY
	end
end