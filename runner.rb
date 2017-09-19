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

def find_string_missing(str)
  numbers_array = str.split(",")
  number_missing = true
  numbers_array.each do |i|
    if (1..10000).include? i.to_i
      number_missing = false
    else
      number_missing
      p i
    end
  end
end

#DRIVER CODE

string_missing_0    = (1..10000).reject { |x| x == 0 }.join(",")
string_missing_10000 = (1..10000).reject { |x| x == 10000 }.join(",")
string_missing_1 = (1..10000).reject { |x| x == 1 }.join(",")


puts find_string_missing(string_missing_0) == 0
puts find_string_missing(string_missing_10000) == 10000
puts find_string_missing(string_missing_1) == 1






# EXERCISE 5

# <Your code here>




