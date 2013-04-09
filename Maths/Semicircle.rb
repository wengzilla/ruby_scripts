class Semicircle
	def initialize(radius)
		@radius = radius
		@diameter = (2 * @radius)
		@pi = 3.141592653
		@pi_radius = @pi * @radius
	end

	def area
		@area = (Exponent.calculate(@pi_radius,2) / 2)
	end

	def circumference
		@circumference = (((@pi * @diameter) / 2) + @diameter)
	end

	def self.help
		puts "initialize(radius)"
		puts "area"
		puts "circumference"
	end
end