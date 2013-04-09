class Coordinates
	def midpoint(x_one,y_one,x_two,y_two)
		@x_one = x_one
		@y_one = y_one
		@x_two = x_two
		@y_two = y_two
		@x = ((@x_one + @x_two) / 2)
		@y = ((@y_one + @y_two) / 2)
		puts "#{@x}, #{@y}"
	end

	def distance(x_one,y_one,x_two,y_two)
		@x_one = x_one
		@y_one = y_one
		@x_two = x_two
		@y_two = y_two
		@distance = RightTriangle.new.hypotenuse((@x_two - @x_one),(@y_two - @y_one))
	end

	def distance_z(x_one, y_one, z_one, x_two, y_two, z_two)
		@x_one = x_one
		@y_one = y_one
		@z_one = z_one
		@x_two = x_two
		@y_two = y_two
		@z_two = z_two
		@x = (Exponent.calculate((@x_two - @x_one)))
		@y = (Exponent.calculate((@y_two - @y_one)))
		@z = (Exponent.calculate((@z_two - @z_one)))
		@distance_z = Math.sqrt(@x + @y + @z)
	end

	def self.help
		puts "midpoint"
		puts "distance"
		puts "distance_z"
	end
end