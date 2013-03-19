class Exponent
	def initialize(x,power = 2)
		@x = x
		@power = power.to_i
		@y = @x
	end
	
	def calculate
		while @power > 1
			@power -= 1
			@y = @y * @x
		end
		@y
	end

	def calculates
		while @power > 1
			puts "#{@y}"
			@power -= 1
			@y = @y * @x
		end
		@y
	end

	def calculater
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
end
