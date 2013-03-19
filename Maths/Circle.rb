class Circle
	def initialize(radius)
		@radius = radius
		@diameter = (2 * @radius)
		@pi = 3.141592653
	end

	def area
		@area = (Exponent.new((@pi * @radius)).calculate)
	end

	def circumference
		@circumference = (@pi * @diameter)
	end
end