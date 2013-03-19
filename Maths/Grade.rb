class Grade
	def initialize(a,b)
		@a = a
		@b = b
	end

	def percent
		@percent = @a / @b
	end

	def letter_grade
		@percent = (Grade.new(@a,@b).percent * 100)
		if @percent >= 96
			puts "A+"
		elsif @percent < 96 && @percent >= 93
			puts "A"
		end
	end
end