class Integer
	def self.spew_one(number_of_digits = 12)
		@number_of_digits = number_of_digits
		@digits = []
		while @number_of_digits != 0
			@number_of_digits -= 1
			@digits << rand(10)
		end
		puts "#{@digits.join("")}"
	end

	def self.spew_two(number_of_lines = 100)
		@number_of_lines = number_of_lines
		@digits = []
		while @number_of_lines != 0
			@number_of_lines -= 1
			puts "#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}"
		end
	end
end