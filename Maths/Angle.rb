class Angle
	def self.find_angle(complementary_supplementary,angle_one)
		@complementary_supplementary = complementary_supplementary
		@angle_one = angle_one
		if @complementary_supplementary == "complementary"
			@angle_two = (90 - @angle_one)
			puts @angle_two
		elsif @complementary_supplementary == "supplementary"
			@angle_two = (180 - @angle_one)
			@angle_two
		end
	end

	def self.help
		puts "find_angle(complementary_supplementary,angle_one)"
	end
end