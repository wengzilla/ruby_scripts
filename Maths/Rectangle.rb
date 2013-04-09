class Rectangle
	def initialize(length, width)
		@length = length
		@width = width
	end

	def area
		@area = (@length * @width)
	end

	def perimeter
		@perimeter = ((@length * 2) + (@width * 2))
	end

	def self.help
		puts "initialize(length,width)"
		puts "area"
		puts "perimeter"
	end
end