class Exponent
	def self.calculate(x,power = 2)
		y = 1
		while power > 1
			power -= 1
			y = y * x
		end
		y
	end

	def self.calculates(x,power = 2)
		while @power > 1
			puts "#{@y}"
			@power -= 1
			@y = @y * @x
		end
		@y
	end

	def self.calculater(x,power = 2)
		@extra_power = 0
		while @power > 1
			@power -= 1
			@extra_power += 1
			@y = @y * @x
			if @extra_power == 1000
				@extra_power = 0
				puts "#{@y}"
			end
		end
		@y
	end

	def self.help
		puts "calculate(x,power = 2)"
		puts "calculates(x,power = 2)"
		puts "calculater(x,power = 2)"
	end
end