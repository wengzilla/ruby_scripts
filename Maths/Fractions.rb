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

	def subtract(a_one,b_one,a_two,b_two)
		@a_one = a_one
		@b_one = b_one
		@a_two = a_two
		@b_two = b_two
		@a = ((@a_one * @b_two) - (@a_two * @b_one))
		@b = (@b_one * @b_two)
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end

	def self.help
		puts "reciprocal(a,b)"
		puts "to_s(a,b)"
		puts "decimal(a,b)"
		puts "percent(a,b)"
		puts "multiply(a_one,b_one,a_two,b_two)"
		puts "divide(a_one,b_one,a_two,b_two)"
		puts "add(a_one,b_one,a_two,b_two)"
		puts "subtract(a_one,b_one,a_two,b_two)"
	end
end