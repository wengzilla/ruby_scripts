class Equality
	def plot_pos(slope,y,number_of_points)
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

	def plot_neg(slope,y,number_of_points)
		@slope = slope
		@y = y
		@x = 0
		@number_of_points = number_of_points
		while @number_of_points > 0
			@number_of_points -= 1
			@y -= @slope
			@x -= 1
			puts "(#{@x},#{@y})"
		end
	end

	def self.plot(slope,y,number_of_points)
		@slope = slope
		@y = y
		@x = 0
		@array = []
		@number_of_points_one = number_of_points
		@number_of_points_two = number_of_points
		while @number_of_points_one > 0
			@number_of_points_one -= 1
			@y += @slope
			@x += 1
			@array << "#{@x},#{@y}"
			puts "pos::(#{@x},#{@y})"
		end
		while @number_of_points_two > 0
			@number_of_points_two -= 1
			@y -= @slope
			@x -= 1
			@array << "#{@x},#{@y}"
			puts "neg::(#{@x},#{@y})"
		end
	end

	def self.find_equation(y_int,next_x,next_y)
		@y_int = y_int
		@x = next_x
		@y = next_y
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
		if @y_int == "+ 0"
			puts "y = #{@slope}x"
		else
			puts "y = #{@slope}x #{@y_int}"
		end
	end

	def self.help
		puts "plot_pos(slope,y,number_of_points)"
		puts "plot_neg(slope,y,number_of_points)"
		puts "plot(slope,y,number_of_points)"
		puts "find_equation(y_int,next_x,next_y)"
	end
end