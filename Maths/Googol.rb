class Googol
	def initialize
		@googol = Exponent.new(10,100).calculate
	end

	def googol
		@googol
	end

	def googols
		Exponent.new(10,100).calculates
	end

	def googolplex		
		@googolplex = Exponent.new(10,@googol).calculate
	end

	def googolplexs
		Exponent.new(10,@googol).calculates
	end

	def googolplexr
		Exponent.new(10,@googol).calculater
	end

	def googolplexplex
		@googolplex = Googol.new.googolplex
		@googolplexplex = Exponent.new(@googolplex,@googolplex)
	end

	def googolplexplexplex
		@googolplexplex = Googol.new.googolplexplex
		@googolplexplexplex = Exponent.new(@googolplexplex,@googolplexplex)
	end
end