class BlackHole
	def initialize(mass)
		@m = mass
		@c = 299792458
		@k = ((1.3806503) * 0.00000000000000000000001)
		@g = ((6.673) * 0.00000000001)
		@p = ((6.626068) * 0.0000000000000000000000000000000001)
		@pi = 3.141592653
		@radius = ((2 * @g * @m) / (Exponent.calculate(@c)))
		@temperature = ((@p * (Exponent.calculate(@c,3))) / (8 * @pi) * (@k * @g * @m))
		@diameter = (((2 * @g * @m) / (Exponent.calculate(@c))) * 2)
		@circumference = (@pi * (((2 * @g * @m) / (Exponent.calculate(@c))) * 2))
		@area = (Exponent.calculate((@pi * @radius)))
		@volume = ((((Exponent.calculate(@radius,3)) * 4) / 3) * @pi)
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
		@temperature
	end

	def event_horizon_radii
		@radius
	end

	def event_horizon_diameters
		@diameter
	end

	def event_horizon_circumferences
		@circumference
	end

	def event_horizon_areas
		@area
	end

	def volumes
		@volume
	end

	def analyzes
		@mass
	end

	def self.help
		puts "initalize(mass)"
		puts "singularity_temperature"
		puts "event_horizon_radius"
		puts "event_horizon_diameter"
		puts "event_horizon_circumference"
		puts "event_horizon_area"
		puts "volume"
		puts "analyze"
		puts "singularity_temperatures"
		puts "event_horizon_radii"
		puts "event_horizon_diameters"
		puts "event_horizon_circumferences"
		puts "event_horizon_areas"
		puts "volumes"
		puts "analyzes"
	end
end