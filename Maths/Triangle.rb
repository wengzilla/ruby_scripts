class Triangle
	def initialize(base, height)
		@base = base
		@height = height
	end

	def area
		@area = ((@base * @height) / 2)
	end

	def self.help
		puts "initalize(base,height)"
		puts "area"
	end
end