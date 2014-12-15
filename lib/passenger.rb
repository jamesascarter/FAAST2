class Passenger

	attr_accessor :dollar

	def initialize
		@dollar = 0
	end

	def topup(amount)
		@dollar += amount
	end

	def touch_in(station)
		@dollar -= 1
	end

end