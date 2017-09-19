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
=begin
First we define a method called format_name that takes one parameter that we'll call "name" here. Looking ahead at the block of code this method will execute we see the
syntax name[:last] which tells us that the parameter's type is a hash. We know this because of the value-bracket-symbol-closed-bracket (eg [:last]) notation use in the block.
The block of this method says the method should return a string and within that string we should return the values of the hash at the particular keys given.
=end
def format_name(name)
  return "#{name[:last]}, #{name[:first]}"
end

=begin
First we define a method called display_name that takes one parameter that we'll call "name" here. In the block of this method we are calling the method #format_name
which is the method we defined above. The return value for #format_name is "#{name[:last]}, #{name[:first]}". Because there is a puts in front of this method in the block, we will see the returned value which is nil.
=end
def display_name(name)
  puts format_name(name)
end


p format_name({first:"Sarah", last:"Caplan"}) == "Caplan, Sarah"
p display_name({first:"Sarah", last:"Caplan"}) == nil





# # EXERCISE 4

# <Your code here>




# # EXERCISE 5

# class House

#   def initialize(current_temp, minimum_temp, maximum_temp)
#     @current_temp = current_temp
#     @minimum_temp = minimum_temp
#     @maximum_temp = maximum_temp
#     @heater_on = false
#     @ac_on = false
#   end

#   def toggle_heater
#     if @heater_on = false && @ac_on = true
#       return @heater_on = false
#     elsif @heater_on = true && @ac_on = false
#       return @heater_on = false
#     else @heater_on = false && @ac_on = false
#       return @heater_on = true
#     end
#   end

#   def toggle_ac
#     if @ac_on = false && @heater_on = true
#       return @ac_on = false
#     elsif @ac_on = true && @heater_on = false
#       return @ac_on = false
#     else @ac_on = false && @heater_on = false
#       return @ac_on = true
#     end
#   end

#   def update_temp!
#     if @heater_on = true
#       @current_temp += 1
#     else @ac_on = true
#       @current_temp += 2
#     end
#   end

#   def thermostat
#     if @current_temp > @maximum_temp
#       @ac_on = true
#       @heater_on = false
#     elsif @current_temp < @minimum_temp
#       @heater_on = true
#       @ac_on = false
#     end
#   end
# end
# # The House initialize method throws an ArgumentError if more or less than three arguments are passed.
# ## Driver code
# my_house = House.new(75, 60, 80)





