class Sphere
	def initialize(radius)
		@radius = radius
		@diameter = (2 * @radius)
		@pi = 3.141592653
	end

	def volume
		@volume = ((((Exponent.calculate(@radius,3)) * 4) / 3) * @pi)
		puts "#{@volume} ^ 3"
	end

	def surface_area
		@surface_area = (Exponent.calculate(((4 * @pi) * @radius),2)) 
		puts "#{@surface_area} ^ 2"
	end

	def self.help
		puts "initialize(radius)"
		puts "volume"
		puts "surface_area"
	end
end