# EXERCISE 1

first_name = "Britt"
last_name = "Flowers"




# EXERCISE 2

def calculate_product(array)
  index = 1.0
  array.each do |i|
    index *= i
  end
  if array == []
    true
  else
    index
  end
end

puts calculate_product([1,2,3]) == 6 # this test puts 'true' if calculate_product([1,2,3]) returns the correct value of 6
puts calculate_product([0,-1,-10]) == 0
puts calculate_product([1,-1,-10]) == 10
puts calculate_product([]) == nil



# EXERCISE 3

=begin
  - def format_name takes in a name as a parameter and the name is returned interpolated with the last name first, a comma, then the first name.

  - def display_name takes in a name, calls the format_name method on that name and then displays it with a puts statement.
=end




# EXERCISE 4

# <Your code here>




# EXERCISE 5

# <Your code here>




