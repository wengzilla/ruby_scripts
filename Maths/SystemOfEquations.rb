class SystemOfEquations
	def self.calculate(slope_one,y_one,slope_two,y_two)
		@slope_one = slope_one
		@y_one = y_one
		@x_one = 0
		@slope_two = slope_two
		@y_two = y_two
		@x_two = 0
		@points_tracked = 0
		while @y_one != @y_two && @x_one != @x_two
			@points_tracked += 1
			@y_one += @slope_one
			@x_one += 1
			@y_two += @slope_two
			@x_two += 1
		end
		puts "(#{@x_one}, #{@y_one})"
		@points_tracked
	end
end