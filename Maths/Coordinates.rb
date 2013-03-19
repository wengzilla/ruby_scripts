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
		@x = (Exponent.new((@x_two - @x_one)).calculate)
		@y = (Exponent.new((@y_two - @y_one)).calculate)
		@z = (Exponent.new((@z_two - @z_one)).calculate)
		@distance_z = Math.sqrt(@x + @y + @z)
		puts "#{@distance_z}"
	end

	def plot(slope,y,number_of_points)
		@slope = slope
		@y = y
		@x = 0
		@number_of_points = number_of_points
		while @number_of_points > 0
			@number_of_points -= 1
			@y += @slope
			@x += 1
			puts "(#{@x},#{@y})"
		end
	end
end