class Binary
	def self.spew(number_of_lines = 100)
		@number_of_lines = number_of_lines
		while @number_of_lines != 0
			@number_of_lines -= 1
			puts "#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}#{rand(2)}"
			sleep(0.04)
		end
	end
end