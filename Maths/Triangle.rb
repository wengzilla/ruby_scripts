class Triangle
	def initialize(base, height)
		@base = base
		@height = height
	end

	def area
		@area = ((@base * @height) / 2)
	end
end