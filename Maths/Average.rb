class Average
	def self.mean(values)
    sum(values).to_f / values.size
	end

  def self.sum(values)
    values.inject(:+)
  end
end

# ask user for input
# @values = []
# puts "Enter your numbers"
# begin
#   @value = gets.chomp
#   # continue asking until user types quit
#   @values << @value.to_i unless @value == "quit"
#   puts @values.inspect
# end until @value == "quit"

# puts Average.mean(@values)

# store values in an array
# pass array to average class