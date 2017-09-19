# EXERCISE 1

first_name = "Quynh"
last_name = "Nguyen"




# EXERCISE 2

def calculate_product(numbers)
  numbers.reduce(:*)
end




# EXERCISE 3

=begin
  Assuming that @last and @first instance variables can be read outside the scope of the class, the format_name method can read said instance variables, and the display_name method subsequently can call upon the format_name method.
=end




# EXERCISE 4

def find_missing_number(string_of_numbers)
  numbers_array = string_of_numbers.split(", ")
  numbers_array.each_with_index do |number1, index|
    if number1.to_i.next != numbers_array[index + 1].to_i
      return number1.to_i + 1
    end
  end
end




# EXERCISE 5

class House
  attr_accessor :current_temp, :minimum_temp, :maximum_temp
  attr_reader :heater_on, :ac_on

  def initialize(current_temp, minimum_temp, maximum_temp)
    @current_temp = current_temp
    @minimum_temp = minimum_temp
    @maximum_temp = maximum_temp
    @heater_on = false
    @ac_on = false
  end

  def toggle_heater
    if !@heater_on # if heater is off
      @heater_on = true # turn heater on
      @ac_on = false # then turn ac off
      puts "The heater is on!"
    else # if the heater is on
      @heater_on = false # then turn heater off
      puts "The heater is off!"
    end
  end

  def toggle_ac
    if !@ac_on # if AC is not on
      @ac_on = true # then turn on the AC
      @heater_on = false # must turn off the heater
      puts "The AC is on!"
    elsif @ac_on
      @ac_on = false
      puts "The AC is off!"
    end
  end

  def update_temp!
    if @heater_on
      @current_temp += 1
      if @current_temp > @maximum_temp
        toggle_ac
      end
    elsif @ac_on
      @current_temp -= 2
      if @current_temp <= @minimum_temp
        toggle_heater
      end
    end
  end

end

house = House.new(75, 60, 80)
p "Testing Testing Testing"
p house.heater_on
house.toggle_heater
p house.heater_on

p house.ac_on
house.toggle_ac
p house.ac_on

p house.current_temp

house.update_temp!
p house.current_temp

until house.current_temp <= house.minimum_temp
  house.update_temp!
  p house.current_temp
end






