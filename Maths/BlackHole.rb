class BlackHole
	def initialize(mass)
		@m = mass
		@c = 299792458
		@k = ((1.3806503) * 0.00000000000000000000001)
		@g = ((6.673) * 0.00000000001)
		@p = ((6.626068) * 0.0000000000000000000000000000000001)
		@pi = 3.141592653
		@radius = ((2 * @g * @m) / (Exponent.new(@c).calculate))
		@temperature = ((@p * (Exponent.new(@c,3).calculate)) / (8 * @pi) * (@k * @g * @m))
		@diameter = (((2 * @g * @m) / (Exponent.new(@c).calculate)) * 2)
		@circumference = (@pi * (((2 * @g * @m) / (Exponent.new(@c).calculate)) * 2))
		@area = (Exponent.new((@pi * @radius)).calculate)
		@volume = ((((Exponent.new(@radius,3).calculate) * 4) / 3) * @pi)
	end

	def singularity_temperature
		puts "#{@temperature} degrees above absolute zero"
	end

	def event_horizon_radius
		puts "#{@radius} meters"
	end

	def event_horizon_diameter
		puts "#{@diameter} meters"
	end

	def event_horizon_circumference
		puts "#{@circumference} meters"
	end

	def event_horizon_area
		puts "#{@area} square meters"
	end

	def volume
		puts "#{@volume} cubic meters"
	end

	def analyze
		puts "Singularity Temperature: #{@temperature} degrees above absolute zero"
		puts "Event Horizon Radius: #{@radius} meters"
		puts "Event Horizon Diameter: #{@diameter} meters"
		puts "Event Horizon Circumference: #{@circumference} meters"
		puts "Event Horizon Area: #{@area} square meters"
		puts "Volume: #{@volume} cubic meters"
	end

	def singularity_temperatures
		puts "#{@temperature} degrees above absolute zero"
		@temperature
	end

	def event_horizon_radii
		puts "#{@radius} meters"
		@radius
	end

	def event_horizon_diameters
		puts "#{@diameter} meters"
		@diameter
	end

	def event_horizon_circumferences
		puts "#{@circumference} meters"
		@circumference
	end

	def event_horizon_areas
		puts "#{@area} square meters"
		@area
	end

	def volumes
		puts "#{@volume} cubic meters"
		@volume
	end

	def analyzes
		puts "Singularity Temperature: #{@temperature} degrees above absolute zero"
		puts "Event Horizon Radius: #{@radius} meters"
		puts "Event Horizon Diameter: #{@diameter} meters"
		puts "Event Horizon Circumference: #{@circumference} meters"
		puts "Event Horizon Area: #{@area} square meters"
		puts "Volume: #{@volume} cubic meters"
		@mass
	end
end