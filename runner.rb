# EXERCISE 1

first_name = "Olivia"
last_name = "Morgan"

# EXERCISE 2

def calculate_product(array)
  product = 1
  array.each do |i|
    product *= i
  end
  product
end

#DRIVER CODE
puts calculate_product([1, 2, 3]) == 6
puts calculate_product([0, -1, 5]) == 0
puts calculate_product([-1, -2, -3]) == 6 #only one that should return false

# EXERCISE 3

=begin
  The method format_name is taking a name hash and then returning the values for the keys known as last and first.
  It is returning them as "last name, first name"

  The method display_name is also taking name hash and then PRINTING the format from format_name.
=end


# EXERCISE 4

def string_missing(str)
numbers_array = str.split(",")




# EXERCISE 5

# <Your code here>




