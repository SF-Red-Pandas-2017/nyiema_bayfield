# EXERCISE 1

first_name = "Joe"
last_name = "Lesca"


# EXERCISE 2

def calculate_product(array)
  product = 1

  if array == []
    return nil
  end

  array.each do |num|
    product = product*num
  end
  return product
end

puts calculate_product([1,2,3]) == 6
puts calculate_product([0,-1,-10]) == 0
puts calculate_product([1,-1,-10]) == 10
puts calculate_product([]) == nil


# EXERCISE 3

=begin
  format_name takes in name as a hash parameter. It then returns the name in a 'last name', 'first name' format.

  display_name takes in name as a hash paramater.  It then calls the method format_name and passes it the same name hash parameter.  Lastly it prints the return value of format_name to the string.
=end


# EXERCISE 4

def find_missing_number(list)
  full_sum = 50005000
  num_array = list.split(',')

  sum = num_array[0].to_i

  i = 1

  while i < num_array.length
    sum += num_array[i].to_i
    i+=1
  end

  missing_num = full_sum - sum.to_i

end

string_missing_7    = (1..10000).reject { |x| x == 7 }.join(",")
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(",")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(",")

puts find_missing_number(string_missing_7) == 7
puts find_missing_number(string_missing_4567) == 4567
puts find_missing_number(string_missing_9999) == 9999


# EXERCISE 5

class House
  def initialize(current_temp, minimum_temp, maximum_temp)
    @current_temp = current_temp
    @minimum_temp = minimum_temp
    @maximum_temp = maximum_temp
    @heater_on = false
    @ac_on = false
  end

  def toggle_heater
    if @heater_on == true
      puts "Heater is now off."
      @heater_on = false
    elsif @heater_on == false && @ac_on == false
      puts "Heater is now on."
      @heater_on = true
    else
      puts "AC is on, cannot turn on heater."
  end

  def toggle_ac
    if @ac_on == true
      puts "AC is now off."
      @ac_on = false
    elsif @ac_on == false && @heater_on == false
      puts "AC is now on."
      @heater_on = true
    else
      puts "Heater is on, cannot turn on AC."
  end

end

joe_house = House.new()
bill_house = House.new()