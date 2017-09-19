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

full_sum = 50005000
def find_missing_number

end

puts find_missing_number(string_missing_7) == 7
puts find_missing_number(string_missing_4567) == 4567
puts find_missing_number(string_missing_9999) == 9999


# EXERCISE 5

#def<Your code here>




