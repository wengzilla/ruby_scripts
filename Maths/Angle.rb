class Angle
	def initialize(complementary_supplementary,angle_one)
		@complementary_supplementary = complementary_supplementary
		@angle_one = angle_one
	end

	def find_angle
		if @complementary_supplementary == "complementary"
			@angle_two = (90 - @angle_one)
			puts @angle_two
		elsif @complementary_supplementary == "supplementary"
			@angle_two = (180 - @angle_one)
			@angle_two
		end
	end
end