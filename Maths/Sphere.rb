class Sphere
	def initialize(radius)
		@radius = radius
		@diameter = (2 * @radius)
		@pi = 3.141592653
	end

	def volume
		@volume = ((((Exponent.new(@radius,3).calculate) * 4) / 3) * @pi)
		puts "#{@volume} ^ 3"
	end

	def surface_area
		@surface_area = (Exponent.new(((4 * @pi) * @radius),2).calculate) 
		puts "#{@surface_area} ^ 2"
	end
end
