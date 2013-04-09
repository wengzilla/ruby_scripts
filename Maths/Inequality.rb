class Inequality
	def self.plot(slope,y,number_of_points = 2,symbol)
		@slope = slope
		@y_one = y
		@y_two = y
		@x = 0
		@array = []
		@number_of_points_one = number_of_points
		@number_of_points_two = number_of_points
		@symbol = symbol
		while @number_of_points_one > 0
			@number_of_points_one -= 1
			@y_one += @slope
			@x += 1
			puts "pos::(#{@x},#{@y_one})"
		end
		@x = 0
		while @number_of_points_two > 0
			@number_of_points_two -= 1
			@y_two -= @slope
			@x -= 1
			puts "neg::(#{@x},#{@y_two})"
		end
		if @symbol.include?("=")
			puts "Line: solid"
		else
			puts "Line: dotted"
		end
		if @symbol.include?(">")
			puts "Shade: above"
		elsif @symbol.include?("<")
			puts "Shade: below"
		end
	end

	def self.check(slope,y_int,x = 0,y = 0,x_coef,y_coef,symbol)
		@slope = slope
		@y_int = y_int
		@x = x
		@y = y
		@x_coef = x_coef
		@y_coef = y_coef
		@symbol = symbol

		if @symbol == ">"
			if (@y * @y_coef) > (@x * @x_coef + @y_int)
				puts "True"
			else
				puts "False"
			end
		elsif @symbol == "<"
			if (@y * @y_coef) < (@x * @x_coef + @y_int)
				puts "True"
			else
				puts "False"
			end
		elsif @symbol == ">="
			if (@y * @y_coef) >= (@x * @x_coef + @y_int)
				puts "True"
			else
				puts "False"
			end
		elsif @symbol == "<="
			if (@y * @y_coef) <= (@x * @x_coef + @y_int)
				puts "True"
			else
				puts "False"
			end
		end
	end

	def self.find_equation(y_int,x,y,shading,line)
		@shading = shading
		@y_int = y_int
		@line = line
		@x = x
		@y = y
		@slope = ((@y - @y_int) / (@x - 0))
		if @y_int.to_s.include? "-"
			@pos_neg_y_int = "neg"
		else
			@pos_neg_y_int = "pos"
		end
		if @slope.to_s.include? "-"
			@pos_neg_slope = "neg"
		else
			@pos_neg_slope = "pos"
		end
		if @pos_neg_slope == "neg"
			@slope *= -1
		end
		if @pos_neg_y_int == "pos"
			@y_int = "+ #{@y_int}"
		end
		if @shading == "above" && @line == "dotted"
			@symbol = ">"
		elsif @shading == "above" && @line == "solid"
			@symbol = ">="
		elsif @shading == "below" && @line == "dotted"
			@symbol = "<"
		elsif @shading == "below" && @line == "solid"
			@symbol = "<="
		end
		if @y_int == "+ 0"
			puts "y #{@symbol} #{@slope}x"
		else
			puts "y #{@symbol} #{@slope}x #{@y_int}"
		end
	end

	def self.help
	puts "plot(slope,y,number_of_points = 2,symbol)"
	puts "check(slope,y_int,x = 0,y = 0,x_coef,y_coef,symbol)"
	puts "find_equation(y_int,x,y,shading,line)"
	end
end