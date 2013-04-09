class Average
	def self.mean(number_of_values)
		@number_of_values = number_of_values
		@number_of_values_unmodified = number_of_values
		@sum_of_values = 0
		while @number_of_values != 0
			@number_of_values -= 1
			puts "Please enter a value"
			value = gets.chomp
			@sum_of_values = @sum_of_values + value.to_i
		end
		@mean = (@sum_of_values / @number_of_values_unmodified)
	end

	def self.help
		puts "mean(number_of_values)"		
	end
end