load "Equality.rb"
class SystemOfEquations
	def self.calculate_eliminate(x_coef_one,y_coef_one,integer_one,x_coef_two,y_coef_two,integer_two)
		@x_coef_one = x_coef_one
		@y_coef_one = y_coef_one
		@integer_one = integer_one
		@x_coef_two = x_coef_two
		@y_coef_two = y_coef_two
		@integer_two = integer_two

		if @x_coef_one == @x_coef_two
			@y_coef = @y_coef_one - @y_coef_two
			@integer = @integer_one - @integer_two
			@y = @integer / @y_coef

			@x = @integer_one - @y
			puts "#{@x},#{@y}"
		elsif @y_coef_one == @y_coef_two
			@x_coef = @x_coef_one - @x_coef_two
			@integer = @integer_one - @integer_two
			@x = @integer / @x_coef

			@y = @integer_one - @x
			puts "#{@x},#{@y}"
		else
			@y_coef_one /= @divider
			@integer_one /= @divider
			@integer_two /= @divider
			@y_coef = @y_coef_one - @y_coef_two
			@integer = @integer_one - @integer_two
			@y = @integer / @y_coef
			@divider = @y_coef_one / @y_coef_two

			@x = @integer_one - @x
			puts "#{@x},#{@y}"
		end
	end

	def self.help
		puts "calculate_eliminate(x_coef_one,y_coef_one,integer_one,x_coef_two,y_coef_two,integer_two)"
	end
end