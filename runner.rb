# EXERCISE 1

first_name = "Maria Luisa"
last_name = "Rhodes"

# EXERCISE 2

def calculate_product(array)
  value = array[0]
  array.shift
    array.each do |number|
      value = value * number
    end
  value
end

puts calculate_product([1,2,3]) == 6 # this test puts 'true' if calculate_product([1,2,3]) returns the correct value of 6
puts calculate_product([0,-1,-10]) == 0
puts calculate_product([1,-1,-10]) == 10
puts calculate_product([]) == nil


# EXERCISE 3

=begin

format_name - it takes a hash as an arguement with the first name and last name as key-value pairs and returns the value in a "last_name, first_name" format.

display_name - prints the name in the format stated above.

=end

# EXERCISE 4

def find_missing_number(string)
  array = string.split(",")
  counter = 0
  value = nil
    until counter == array.length-1
      if array[counter+1].to_i - array[counter].to_i != 1
        value = array[counter].to_i
      end
      counter += 1
    end
  value+1
end

string_missing_7    = (1..10000).reject { |x| x == 7 }.join(",")
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(",")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(",")

puts " "
puts find_missing_number(string_missing_7) == 7
puts find_missing_number(string_missing_4567) == 4567
puts find_missing_number(string_missing_9999) == 9999


# EXERCISE 5

class House

  attr_accessor :current_temp, :heater_on, :ac_on
  attr_reader :minimum_temp, :maximum_temp

  def initialize (current_temp, minimum_temp, maximum_temp)
    @current_temp = current_temp
    @minimum_temp = minimum_temp
    @maximum_temp = maximum_temp
    @heater_on = false
    @ac_on = false
  end

  def toggle_heater
    @heater_on = true
    @ac_on = false
  end

  def toggle_ac
    @ac_on = true
    @heater_on = false
  end

  def update_temp!
    if heater_on
      @current_temp += 1
    elsif ac_on
      @current_temp -= 1
    end

    if @current_temp > maximum_temp
      toggle_ac
    elsif @current_temp < minimum_temp
      toggle_heater
    end
  end

end

my_house = House.new(75, 60, 80)


puts my_house.current_temp

my_house.toggle_heater
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
my_house.update_temp!
puts my_house.current_temp
