class Grade
	def initialize(a,b)
		@a = a
		@b = b
	end

	def percent
		@a *= 100
		@percent = @a / @b
	end

	def letter_grade
		@percent = (Grade.new(@a,@b).percent)
		if @percent >= 96
			puts "A+"
		elsif @percent < 96 && @percent >= 93
			puts "A"
		end
	end

	def self.help
		puts "initialize(a,b)"
		puts "percent"
		puts "letter_grade"
	end
end