class Average
	def initialize(number_of_values)
		@number_of_values = number_of_values
		@number_of_values_unmodified = number_of_values
	end

	def mean
		@sum_of_values = 0
		while @number_of_values != 0
			@number_of_values -= 1
			puts "Please enter a value"
			value = gets.chomp
			@sum_of_values = @sum_of_values + value.to_i
		end
		@mean = (@sum_of_values / @number_of_values_unmodified)
	end

	def median
		@x = [1..10]
		@numbers = []
		while @number_of_values != 1
			@number_of_objects = @numbers.count
			@number_of_values -= 1
			puts "Please enter a value"
			value = gets.chomp
			@numbers << value
		end
		@numbers = @numbers.sort
		if @numbers.count != (@x.each * 2)
			@middle_value = (@numbers.count / 2)
			@median = @numbers.fetch(@middle_value)
		elsif @numbers.count == (@x.each * 2)
			@middle_value_one = ((@numbers.count / 2) - 0.5)
			@middle_value_two = ((@numbers.count / 2) + 0.5)
			@median = ((@numbers.fetch(@middle_value_one) + @numbers.fetch(@middle_value_two)) / 2)
		end
		@median
	end
end