class Coordinates
	def midpoint(x_one,y_one,x_two,y_two)
		@x_one = x_one
		@y_one = y_one
		@x_two = x_two
		@y_two = y_two
		@x = ((@x_one + @x_two) / 2)
		@y = ((@y_one + @y_two) / 2)
		puts "#{@x}, #{@y}"
	end

	def distance(x_one,y_one,x_two,y_two)
		@x_one = x_one
		@y_one = y_one
		@x_two = x_two
		@y_two = y_two
		@distance = RightTriangle.new.hypotenuse((@x_two - @x_one),(@y_two - @y_one))
	end

	def distance_z(x_one, y_one, z_one, x_two, y_two, z_two)
		@x_one = x_one
		@y_one = y_one
		@z_one = z_one
		@x_two = x_two
		@y_two = y_two
		@z_two = z_two
		@x = (Exponent.new((@x_two - @x_one)).calculate)
		@y = (Exponent.new((@y_two - @y_one)).calculate)
		@z = (Exponent.new((@z_two - @z_one)).calculate)
		@distance_z = Math.sqrt(@x + @y + @z)
		puts "#{@distance_z}"
	end
end

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

class Fractions
	def reciprocal(a,b)
		@a = a
		@b = b
		puts "#{@b}"
		puts "-"
		puts "#{@a}"
	end

	def to_s(a,b)
		@a = a
		@b = b
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end

	def decimal(a,b)
		@a = a
		@b = b
		@decimal = (@a / @b)
		puts "#{@decimal}"
	end

	def percent(a,b)
		@a = a
		@b = b
		percent = ((@a / @b) * 100)
		puts "#{percent}"
	end

	def multiply(a_one,b_one,a_two,b_two)
		@a_one = a_one
		@b_one = b_one
		@a_two = a_two
		@b_two = b_two
		@a = (@a_one * @a_two)
		@b = (@b_one * @b_two)
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end

	def divide(a_one,b_one,a_two,b_two)
		@a_one = a_one
		@b_one = b_one
		@a_two = a_two
		@b_two = b_two
		@a = (@a_one * @b_two)
		@b = (@b_one * @a_two)
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end

	def add(a_one,b_one,a_two,b_two)
		@a_one = a_one
		@b_one = b_one
		@a_two = a_two
		@b_two = b_two
		@a = ((@a_one * @b_two) + (@a_two * @b_one))
		@b = (@b_one * @b_two)
		puts "#{@a}"
		puts "-"
		puts "#{@b}"
	end
end

class Circle
	def initialize(radius)
		@radius = radius
		@diameter = (2 * @radius)
		@pi = 3.141592653
	end

	def area
		@area = (Exponent.new((@pi * @radius)).calculate)
	end

	def circumference
		@circumference = (@pi * @diameter)
	end
end

class Sphere
	def initialize(radius)
		@radius = radius
		@diameter = (2 * @radius)
		@pi = 3.141592653
	end

	def volume
		@volume = ((((Exponent.new(@radius,3).calculate) * 4) / 3) * @pi)
		puts "#{@volume} ^ 3"
	end

	def surface_area
		@surface_area = (Exponent.new(((4 * @pi) * @radius),2).calculate) 
		puts "#{@surface_area} ^ 2"
	end
end

class Rectangle
	def initialize(length, width)
		@length = length
		@width = width
	end

	def area
		@area = (@length * @width)
	end

	def perimeter
		@perimeter = ((@length * 2) + (@width * 2))
	end
end

class Triangle
	def initialize(base, height)
		@base = base
		@height = height
	end

	def area
		@area = ((@base * @height) / 2)
	end
end

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

class Trapezoid
	def initialize(base_one,base_two,height)
		@base_one = base_one
		@base_two = base_two
		@height = height
	end

	def area
		@area = (((@base_one + @base_two) / 2) * @height)
	end

	def perimeter
		@perimeter = (@base_one + @base_two + ((RightTriangle.new(@height,(@base_one - @base_two)).hypotenuse) * 2))
	end
end

class RectangularPrism
	def initialize(length,width,height)
		@length = length
		@width = width
		@height = height
	end

	def volume
		@volume = (@length * @width * @height)
		puts "#{@volume} ^ 3"
	end

	def surface_area
		@surface_area = ((@length * @height * 4) + (@height * @width * 2))
		puts "#{@surface_area} ^ 2"
	end
end

class TriangularPrism
	def initialize(length,width,height)
		@length = length
		@width = width
		@height = height		
	end

	def volume
		@volume = (@length * @width * @height)
		puts "#{@volume} ^ 3"
	end

	def surface_area
		@surface_area = ((@length * @height * 4) + (@height * @width))
		puts "#{@surface_area} ^ 2"
	end
end

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

class SystemOfEquations
	def initialize(x,y,equation_one,equation_one_answer,equation_two,equation_two_answer)
		@x = x
		@y = y
		@equation_one = equation_one
		@equation_one_answer = equation_one_answer
		@equation_two = equation_two
		@equation_two_answer = equation_two_answer
	end

	def verify
		@equation_one.gsub("x", "#{@x}")
		@equation_one.gsub("y", "#{@y}")
		@equation_two.gsub("x", "#{@x}")
		@equation_two.gsub("y", "#{@y}")
		if @equation_one.to_i == true && @equation_two.to_i == true
			puts "True"
		else
			puts "False"
		end
	end
end

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

class Googol
	def initialize
		@googol = Exponent.new(10,100).calculate
	end

	def googol
		@googol
	end

	def googols
		Exponent.new(10,100).calculates
	end

	def googolplex		
		@googolplex = Exponent.new(10,@googol).calculate
	end

	def googolplexs
		Exponent.new(10,@googol).calculates
	end

	def googolplexr
		Exponent.new(10,@googol).calculater
	end

	def googolplexplex
		@googolplex = Googol.new.googolplex
		@googolplexplex = Exponent.new(@googolplex,@googolplex)
	end

	def googolplexplexplex
		@googolplexplex = Googol.new.googolplexplex
		@googolplexplexplex = Exponent.new(@googolplexplex,@googolplexplex)
	end
end

class Average
	def initialize(number_of_values)
		@number_of_values = number_of_values
		@number_of_values_unmodified = number_of_values
	end

	def mean
		@sum_of_values = 0
		while @number_of_values != 0
			@number_of_values -= 1
			puts "Please enter a value"
			value = gets.chomp
			@sum_of_values = @sum_of_values + value.to_i
		end
		@mean = (@sum_of_values / @number_of_values_unmodified)
	end

	def median
		@x = [1..10]
		@numbers = []
		while @number_of_values != 1
			@number_of_objects = @numbers.count
			@number_of_values -= 1
			puts "Please enter a value"
			value = gets.chomp
			@numbers << value
		end
		@numbers = @numbers.sort
		if @numbers.count != (@x.each * 2)
			@middle_value = (@numbers.count / 2)
			@median = @numbers.fetch(@middle_value)
		elsif @numbers.count == (@x.each * 2)
			@middle_value_one = ((@numbers.count / 2) - 0.5)
			@middle_value_two = ((@numbers.count / 2) + 0.5)
			@median = ((@numbers.fetch(@middle_value_one) + @numbers.fetch(@middle_value_two)) / 2)
		end
		@median
	end
end

class Grade
	def initialize(a,b)
		@a = a
		@b = b
	end

	def percent
		@percent = @a / @b
	end

	def letter_grade
		@percent = (Grade.new(@a,@b).percent * 100)
		if @percent >= 96
			puts "A+"
		elsif @percent < 96 && @percent >= 93
			puts "A"
		end
	end
end