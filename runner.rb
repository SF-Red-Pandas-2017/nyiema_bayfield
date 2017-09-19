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
    nil
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
  - def format_name takes in a name in a hash as a parameter and the name is returned interpolated with the last name first, a comma, then the first name.

  - def display_name takes in a name, calls the format_name method on that name and then displays it normally with a puts statement.
=end




# EXERCISE 4

def find_missing_number(array)

end

string_missing_7    = (1..10000).reject { |x| x == 7 }.join(",")
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(",")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(",")

# puts find_missing_number(string_missing_7) == 7
# puts find_missing_number(string_missing_4567) == 4567
# puts find_missing_number(string_missing_9999) == 9999




# # EXERCISE 5

class House

  def initialize(current_temp, minimum_temp, maximum_temp)
    @house = house
    @toggle_heater = false
    @toggle_ac = false
  end

  def toggle_heater(@house)

  end

  def toggle_ac(@house)
    if toggle_heater(@house)
      @toggle_ac == false
    end
  end

end




