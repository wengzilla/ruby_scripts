class Fractions
	def reciprocal(a,b)
		@a = a
		@b = b
		puts "#{@b}"
		puts "-"
		puts "#{@a}"
	end

	def to_s(a,b)
		@a = a
		@b = b
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end

	def decimal(a,b)
		@a = a
		@b = b
		@decimal = (@a / @b)
		puts "#{@decimal}"
	end

	def percent(a,b)
		@a = a
		@b = b
		percent = ((@a / @b) * 100)
		puts "#{percent}"
	end

	def multiply(a_one,b_one,a_two,b_two)
		@a_one = a_one
		@b_one = b_one
		@a_two = a_two
		@b_two = b_two
		@a = (@a_one * @a_two)
		@b = (@b_one * @b_two)
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end

	def divide(a_one,b_one,a_two,b_two)
		@a_one = a_one
		@b_one = b_one
		@a_two = a_two
		@b_two = b_two
		@a = (@a_one * @b_two)
		@b = (@b_one * @a_two)
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end

	def add(a_one,b_one,a_two,b_two)
		@a_one = a_one
		@b_one = b_one
		@a_two = a_two
		@b_two = b_two
		@a = ((@a_one * @b_two) + (@a_two * @b_one))
		@b = (@b_one * @b_two)
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end
end