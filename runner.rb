# EXERCISE 1
first_name = "Iris"
last_name = "Nevins"

# EXERCISE 2
def calculate_product(array)
  product = 1
  array.each do |i|
    product *= i
  end
  product
end


# EXERCISE 3

def format_name(name)
  return "#{name[:last]}, #{name[:first]}"
end

def display_name(name)
  puts format_name(name)
end

# format_name returns an the keys of a hash but does not print the value to the console
# display_name prints the value of format_name to the console


# # EXERCISE 4
string_missing_7 = (1..10000).reject { |x| x == 7 }.join(",")
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(",")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(",")

def find_missing_number(arg)
  arg = arg.split(",")
  new_arg = arg.map do |i|
              i.to_i
            end
  i = 0
  while i < new_arg.length-1
    if new_arg[i] + 1 != new_arg[i + 1]
      missing_number = new_arg[i] + 1
    end
    i+=1
  end
  missing_number
end


# EXERCISE 5
class House

  def initialize(current_temp, minimum_temp, maximum_temp)
    @current_temp = current_temp
    @minimum_temp = minimum_temp
    @maximum_temp = maximum_temp
    @heater_on = false
    @ac_on = false
  end

  def heater_status(status)
    if status == "on"
      @heater_on = true
    elsif status == "off"
      @heater_on = false
    else
      @heater_on = false
    end
    @heater_on
  end

  def ac_status(status)
    if status == "on" && @heater_on == false
      @ac_on = true
    elsif status == "on" && @heater_on == true
      @ac_on = false
    elsif status == "off"
      @ac_on = false
    else
      @ac_on = false
    end
    @ac_on
  end

  def toggle_heater
    if @heater_on == true
      @heater_on = false
    else
      @heater_on = true
    end
    @heater_on
  end

  def toggle_ac
    if @ac_on == true
      @ac_on = false
    else
      @ac_on = true
    end
    @ac_on
  end



end

# driver/test code
# puts calculate_product([1,2,3]) == 6 # this test puts 'true' if calculate_product([1,2,3]) returns the correct value of 6
# puts calculate_product([0,-1,-10]) == 0
# puts calculate_product([1,-1,-10]) == 10
# puts calculate_product([]) == 1
# puts calculate_product([1, -4]) == -4
# puts format_name({:first => "Iris", :last => "Nevins"}) == "Nevins, Iris"
# puts display_name({:first => "Iris", :last => "Nevins"}) == nil
# puts find_missing_number("1, 2, 3, 5")
# puts find_missing_number(string_missing_7) == 7
# puts find_missing_number(string_missing_4567) == 4567
# puts find_missing_number(string_missing_9999) == 9999
iris_house = House.new(76, 65, 80)
p iris_house
p iris_house.heater_status("on")
p iris_house.ac_status("on")
p iris_house.toggle_ac
p iris_house.toggle_heater
