class RightTriangle
	def hypotenuse(a,b)
		@a = a
		@b = b
		@hypotenuse = Math.sqrt((Exponent.new(@a).calculate) + Exponent.new(@b).calculate)
	end

	def find_leg(a,c)
		@a = a
		@c = c
		@leg = (Exponent.new(@c).calculate - Exponent.new(@a).calculate)
	end
end