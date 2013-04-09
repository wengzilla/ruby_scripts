class RightTriangle
	def hypotenuse(a,b)
		@a = a
		@b = b
		@hypotenuse = Math.sqrt((Exponent.calculate(@a)) + Exponent.calculate(@b))
	end

	def find_leg(a,c)
		@a = a
		@c = c
		@leg = (Exponent.calculate(@c) - Exponent.calculate(@a))
	end

	def self.help
		puts "hypotenuse(a,b)"
		puts "find_leg(a,c)"
	end
end