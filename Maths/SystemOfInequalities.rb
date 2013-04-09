class SystemOfInequalities
	def self.calculate(slope_one,y_one,symbol_one,slope_two,y_two,symbol_two,number_of_points = 2)
		@slope_one = slope_one
		@slope_two = slope_two
		@y_one = y_one
		@y_two = y_two
		@number_of_points_one = number_of_points
		@number_of_points_two = number_of_points
		@symbol_one = symbol_one
		@symbol_two = symbol_two
		if @slope_one.to_s.include?("-")
			@slope_one_pos_neg = "neg"
		else
			@slope_one_pos_neg = "pos"
		end
		if @slope_two.to_s.include?("-")
			@slope_two_pos_neg = "neg"
		else
			@slope_two_pos_neg = "pos"
		end

		puts "Line 1:"
		Inequality.plot(@slope_one,@y_one,@number_of_points_one,@symbol_one)
		puts "Line 2:"
		Inequality.plot(@slope_two,@y_two,@number_of_points_two,@symbol_two)

		if @symbol_one.include?(">") && @slope_one_pos_neg == "pos" && @symbol_two.include?(">") && @slope_two_pos_neg == "pos"
			puts "Shading: top left"
		elsif @symbol_one.include?(">") && @slope_one_pos_neg == "pos" && @symbol_two.include?(">") && @slope_two_pos_neg == "neg"
			puts "Shading: top"
		elsif @symbol_one.include?(">") && @slope_one_pos_neg == "neg" && @symbol_two.include?(">") && @slope_two_pos_neg == "neg"
			puts "Shading: top right"
		elsif @symbol_one.include?(">") && @slope_one_pos_neg == "neg" && @symbol_two.include?(">") && @slope_two_pos_neg == "pos"
			puts "Shading: top"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "pos" && @symbol_two.include?("<") && @slope_two_pos_neg == "pos"
			puts "Shading: bottom right"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "pos" && @symbol_two.include?("<") && @slope_two_pos_neg == "neg"
			puts "Shading: bottom"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "neg" && @symbol_two.include?("<") && @slope_two_pos_neg == "neg"
			puts "Shading: bottom left"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "neg" && @symbol_two.include?("<") && @slope_two_pos_neg == "pos"
			puts "Shading: bottom"
		elsif @symbol_one.include?(">") && @slope_one_pos_neg == "pos" && @symbol_two.include?("<") && @slope_two_pos_neg == "pos"
			puts "Shading: bottom left/left"
		elsif @symbol_one.include?(">") && @slope_one_pos_neg == "pos" && @symbol_two.include?("<") && @slope_two_pos_neg == "neg"
			puts "Shading: bottom left/left"
		elsif @symbol_one.include?(">") && @slope_one_pos_neg == "neg" && @symbol_two.include?("<") && @slope_two_pos_neg == "neg"
			puts "Shading: top right/right"
		elsif @symbol_one.include?(">") && @slope_one_pos_neg == "neg" && @symbol_two.include?("<") && @slope_two_pos_neg == "pos"
			puts "Shading: top right/right"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "pos" && @symbol_two.include?(">") && @slope_two_pos_neg == "pos"
			puts "Shading: bottom left/left"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "pos" && @symbol_two.include?(">") && @slope_two_pos_neg == "neg"
			puts "Shading: bottom left/left"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "neg" && @symbol_two.include?(">") && @slope_two_pos_neg == "neg"
			puts "Shading: top right/right"
		elsif @symbol_one.include?("<") && @slope_one_pos_neg == "neg" && @symbol_two.include?(">") && @slope_two_pos_neg == "pos"
			puts "Shading: top right/right"
		end
	end

	def self.help
		puts "calculate(slope_one,y_one,symbol_one,slope_two,y_two,symbol_two,number_of_points)"
	end
end