# EXERCISE 1

first_name = "Sarah"
last_name = "Caplan"

p first_name == "Sarah"
p last_name == "Caplan"



# # EXERCISE 2

def calculate_product(numbers)
  if numbers == []
    return nil
  else
    product = 1
    numbers.each do |i|
      product = product * i
    end
    product
  end
end

p calculate_product([2,8,3]) == 48
puts calculate_product([1,2,3]) == 6 # this test puts 'true' if calculate_product([1,2,3]) returns the correct value of 6
puts calculate_product([0,-1,-10]) == 0
puts calculate_product([1,-1,-10]) == 10
puts calculate_product([]) == nil


# # EXERCISE 3

# def format_name(name)
#   return "#{name[:last]}, #{name[:first]}"
# end

# def display_name(name)
#   puts format_name(name)
# end





# # EXERCISE 4

# <Your code here>




# # EXERCISE 5

class House

  def initialize(current_temp, minimum_temp, maximum_temp)
    @current_temp = current_temp
    @minimum_temp = minimum_temp
    @maximum_temp = maximum_temp
    @heater_on = false
    @ac_on = false
  end

  def toggle_heater()
    if heater_on = false && ac_on = true
      return heater_on = false
    elsif heater_on = true && ac_on = false
      return heater_on = false
    else heater_on = false && ac_on = false
      return heater_on = true
    end
  end

  def toggle_ac()
    if ac_on = false && heater_on = true
      return ac_on = false
    elsif ac_on = true && heater_on = false
      return ac_on = false
    else ac_on = false && heater_on = false
      return ac_on = true
    end
  end

end
# The House initialize method throws an ArgumentError if more or less than three arguments are passed.



