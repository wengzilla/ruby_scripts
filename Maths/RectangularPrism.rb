class RectangularPrism
	def initialize(length,width,height)
		@length = length
		@width = width
		@height = height
	end

	def volume
		@volume = (@length * @width * @height)
		puts "#{@volume} ^ 3"
	end

	def surface_area
		@surface_area = ((@length * @height * 4) + (@height * @width * 2))
		puts "#{@surface_area} ^ 2"
	end

	def self.help
		puts "initialize(length,width,height)"
		puts "volume"
		puts "surface_area"
	end
end