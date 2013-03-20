load "Coordinates.rb"
class SystemOfEquations
	def self.calculate_eliminate(x_coef_one,y_coef_one,integer_one,x_coef_two,y_coef_two,integer_two)
		@x_coef_one = x_coef_one
		@y_coef_one = y_coef_one
		@integer_one = integer_one
		@x_coef_two = x_coef_two
		@y_coef_two = y_coef_two
		@integer_two = integer_two

		@y_coef = @y_coef_one -= @y_coef_two
		@x_coef = @x_coef_one -= @x_coef_two
		if @y_coef == 0
			@y_coef = 1
		end 
		@y = ((@integer_one -= @integer_two) / @y_coef)
		@integer_one = @integer_one -= (@y * @y_coef)
		@x = @integer_one / @x_coef
		puts "(#{@x}, #{@y})"
	end

	def self.calculate_graph(slope_one,y_int_one,slope_two,y_int_two)
		@slope_one = slope_one
		@y_int_one = y_int_one
		@slope_two = slope_two
		@y_int_two = y_int_two
	end
end