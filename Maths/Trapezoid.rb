class Trapezoid
	def initialize(base_one,base_two,height)
		@base_one = base_one
		@base_two = base_two
		@height = height
	end

	def area
		@area = (((@base_one + @base_two) / 2) * @height)
	end

	def perimeter
		@perimeter = (@base_one + @base_two + ((RightTriangle.new(@height,(@base_one - @base_two)).hypotenuse) * 2))
	end
end